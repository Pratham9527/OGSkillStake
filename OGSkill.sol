
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract OGSkillStake {
    struct Milestone {
        string description;
        uint256 amount;
        bool isCompleted;
    }

    address public talent;
    address public approver;
    Milestone[] public milestones;
    mapping(address => uint256) public investorBalances;

    uint256 public totalStaked;
    bool public initialized;

    constructor(address _approver) {
        approver = _approver;
    }

    modifier onlyTalent() {
        require(msg.sender == talent, "Only the talent can call this");
        _;
    }

    modifier onlyApprover() {
        require(msg.sender == approver, "Only approver can verify");
        _;
    }

    function initialize(address _talent, string[] memory descriptions, uint256[] memory amounts) external {
        require(!initialized, "Already initialized");
        require(descriptions.length == amounts.length, "Length mismatch");
        talent = _talent;
        initialized = true;

        for (uint i = 0; i < descriptions.length; i++) {
            milestones.push(Milestone(descriptions[i], amounts[i], false));
        }
    }

    function stake() external payable {
        require(msg.value > 0, "Must send ETH");
        investorBalances[msg.sender] += msg.value;
        totalStaked += msg.value;
    }

    function verifyMilestone(uint index) external onlyApprover {
        require(index < milestones.length, "Invalid index");
        require(!milestones[index].isCompleted, "Already completed");
        milestones[index].isCompleted = true;
    }

    function claimMilestone(uint index) external onlyTalent {
        require(index < milestones.length, "Invalid index");
        Milestone storage m = milestones[index];
        require(m.isCompleted, "Milestone not verified");
        require(address(this).balance >= m.amount, "Insufficient funds");
        m.amount = 0;
        payable(talent).transfer(m.amount);
    }

    function getMilestones() external view returns (Milestone[] memory) {
        return milestones;
    }
}
