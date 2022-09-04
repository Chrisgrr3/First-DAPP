pragma solidity ^0.4.17;

contract Ballot {

    struct Voter {
        uint weight;
        bool voted; // Keeps track of whether or not a voter voted
        uint8 vote; // Keeps track of which proposal the voter voted for.
    }

    //modifier
    modifier onlyOwner() {
        require(msg.sender == chairperson);
        _;
    }

    address public chairperson;
    mapping(address => Voter) public voters;
    uint[4] public proposals;

    // Create a new ballot with 4 different proposals.
    function Ballot() public {
        chairperson = msg.sender;
        voters[chairperson].weight = 2;
    }

    // Give $(toVoter) the right to vote on this ballot.
    // May only be called by $(chairperson)
    function register(address toVoter) public onlyOwner {
        if(voters[toVoter].weight != 0) revert();
        voters[toVoter].weight = 1;
        voters[toVoter].voted = false;
    }
}