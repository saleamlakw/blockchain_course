# Nebiyu Musbah - Solidity Course Submission

## Folder Structure

- **codebases/** - All codebases developed throughout the Alchemy University Solidity course
- **materials/** - All materials distributed during the course (notes, PDFs, slides)
- **screenshots/** - Screenshots demonstrating course progress and completion

## Git Workflow

1. Add your course materials to the appropriate folders
2. Stage your changes: `git add .`
3. Commit your changes: `git commit -m "Initial commit - Nebiyu's Solidity course materials"`
4. Create a branch: `git checkout -b nebiyu-musbah`
5. Push to remote: `git push origin nebiyu-musbah`

## Course Details
- **Platform:** Alchemy University (https://www.alchemy.com/university/courses/solidity)
- **Course:** Learn Solidity
- **Status:** ✅ COMPLETED - All chapters finished

## Course Chapters

### Chapter 1: Solidity Introduction
- [x] Course Overview
- [x] Smart Contracts Overview
- [x] Value Types
- [x] Practice Data Types
- [x] Storage Variables
- [x] Functions
- [x] Practice Solidity Functions

### Chapter 2: Address Interactions
- [x] Message Calls
- [x] Practice Sending Ether
- [x] Reverting Transactions
- [x] Practice Reverting Transactions
- [x] Calling Contracts
- [x] Practice Calldata
- [x] Escrow Explanation
- [x] Build an Escrow

### Chapter 3: Reference Types
- [x] Arrays
- [x] Practice Arrays
- [x] Structs
- [x] Practice Structs
- [x] Mappings
- [x] Practice Mappings ✅

### Chapter 4: Applied Solidity
- [x] Voting Explanation
- [x] Build a Voting Contract ✅
- [x] Inheritance
- [x] Practice Inheritance ✅
- [x] Wrap Up Video
- [x] Course Completion ✅

## Code Files (29 Solidity Contracts)

### Chapter 1: Solidity Introduction
**Practice Data Types:**
- `Booleans.sol` - Boolean storage variables
- `UnsignedIntegers.sol` - uint8, uint16, uint256 types
- `SignedIntegers.sol` - int8, int16 types
- `StringLiterals.sol` - bytes32 and string types
- `EnumType.sol` - Enum definitions

**Storage Variables:**
- `StorageVariables.sol` - Constructor with uint parameter

**Practice Solidity Functions:**
- `Increment.sol` - External increment function
- `AddUint.sol` - View function with returns
- `WinningNumber.sol` - Using console.log
- `DoubleUint.sol` - Pure functions
- `OverloadDouble.sol` - Function overloading

### Chapter 2: Address Interactions
**Practice Sending Ether:**
- `StoreOwner.sol` - msg.sender storage
- `ReceiveEther.sol` - receive() function
- `TransferTips.sol` - Ether transfer with call
- `CharityDonation.sol` - Contract balance transfer
- `SelfDestruct.sol` - selfdestruct opcode

**Practice Reverting Transactions:**
- `Require1Ether.sol` - Constructor with require
- `OwnerWithdrawal.sol` - Access control
- `RequireOwner.sol` - onlyOwner modifier

**Practice Calldata:**
- `AlertHero.sol` - Interface usage
- `AlertHeroManually.sol` - Manual calldata encoding
- `AlertWithArguments.sol` - abi.encodeWithSignature
- `PassCalldata.sol` - Relay calldata
- `TriggerFallback.sol` - Fallback invocation

**Build an Escrow:**
- `Escrow.sol` - Complete escrow with events

### Chapter 3: Reference Types
**Practice Arrays:**
- `SumArray.sol` - Fixed-size array operations

**Practice Structs:**
- `Structs.sol` - Struct storage and arrays

**Practice Mappings:**
- `MembersMapping.sol` - Basic mapping
- `IsMember.sol` - Mapping retrieval
- `RemoveMember.sol` - Mapping updates
- `UserMapping.sol` - Mapping to struct
- `Transfer.sol` - Balance transfer with mappings
- `NestedMappings.sol` - Nested mapping structure

### Chapter 4: Applied Solidity
**Build a Voting Contract:**
- `ProposalStorage.sol` - Proposal struct and array
- `CastVote.sol` - Basic voting
- `MultipleVotes.sol` - Vote changing with mappings
- `VotingWithEvents.sol` - Events for proposals/votes
- `VotingWithMembers.sol` - Member access control
- `ExecuteVote.sol` - Execution after 10 yes votes

**Practice Inheritance:**
- `Ownable.sol` - Base contract with modifier
- `Transferable.sol` - Ownership transfer
- `SuperHeroes.sol` - Multiple inheritance with virtual/override
- `Collectible.sol` - Multi-base inheritance
