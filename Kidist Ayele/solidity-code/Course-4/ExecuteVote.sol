// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {
    struct Proposal {
        address target;
        bytes data;
        uint yesCount;
        uint noCount;
    }

    Proposal[] public proposals;

    mapping(address => bool) public isMember;
    mapping(uint => bool) public executed;

    event ProposalCreated(uint proposalId);
    event VoteCast(uint proposalId, address voter);

    mapping(uint => mapping(address => bool)) public hasVoted;
    mapping(uint => mapping(address => bool)) public voteChoice;

    constructor(address[] memory members) {
        isMember[msg.sender] = true;

        for (uint i = 0; i < members.length; i++) {
            isMember[members[i]] = true;
        }
    }

    function newProposal(address target, bytes calldata data) external {
        require(isMember[msg.sender], "Not a member");

        proposals.push(Proposal({
            target: target,
            data: data,
            yesCount: 0,
            noCount: 0
        }));

        emit ProposalCreated(proposals.length - 1);
    }

    function castVote(uint proposalId, bool support) external {
        require(isMember[msg.sender], "Not a member");

        Proposal storage proposal = proposals[proposalId];

        if (hasVoted[proposalId][msg.sender]) {
            bool previousVote = voteChoice[proposalId][msg.sender];

            if (previousVote) {
                proposal.yesCount -= 1;
            } else {
                proposal.noCount -= 1;
            }
        }

        hasVoted[proposalId][msg.sender] = true;
        voteChoice[proposalId][msg.sender] = support;

        if (support) {
            proposal.yesCount += 1;
        } else {
            proposal.noCount += 1;
        }

        emit VoteCast(proposalId, msg.sender);

        if (!executed[proposalId] && proposal.yesCount >= 10) {
            executed[proposalId] = true;

            (bool success, ) = proposal.target.call(proposal.data);
            require(success, "Execution failed");
        }
    }
}
