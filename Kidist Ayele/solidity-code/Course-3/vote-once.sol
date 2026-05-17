// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
	enum Choices { Yes, No }
	
	struct Vote {
		Choices choice;
		address voter;
	}
	
	// TODO: create a public state variable: an array of votes
	Vote[] public votes;

	function createVote(Choices choice) external {
		// TODO: add a new vote to the array of votes state variable
		require(!hasVoted(msg.sender), "Address has already voted.");
		votes.push(Vote(choice, msg.sender));
	}

	function hasVoted(address _voter) public view returns (bool) {
		for (uint i = 0; i < votes.length; i++) {
			if (votes[i].voter == _voter) {
				return true;
			}
		}
		return false;
	}

	function findChoice(address _voter) external view returns (Choices) {
		for (uint i = 0; i < votes.length; i++) {
			if (votes[i].voter == _voter) {
				return votes[i].choice;
			}
		}
		return Choices.Yes;
	}
}