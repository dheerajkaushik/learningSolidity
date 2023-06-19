pragma solidity ^0.8.0;

contract AdminControlledContract {
    address public admin;
    
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only the admin can call this function.");
        _;
    }
    
    constructor() {
        admin = msg.sender;
    }
    
    function setAdmin(address newAdmin) external onlyAdmin {
        require(newAdmin != address(0), "Invalid admin address.");
        admin = newAdmin;
    }
    
    // Example function that can only be called by the admin
    function adminOnlyFunction() external onlyAdmin {
        // Function logic goes here
    }
    
    // Example function that can be called by any address
    function publicFunction() external {
        // Function logic goes here
    }
}
