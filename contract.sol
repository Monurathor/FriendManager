// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract FriendManager {
    mapping(address => uint) public friendCount;

    function addFriend() external {
        require(friendCount[msg.sender] < 4, "Maximum number of friends reached");
        
        friendCount[msg.sender]++;
    }
    
    function removeFriend() external {
          if (friendCount[msg.sender] <0) {
            revert("No friends to remove");
        }
        
    
        friendCount[msg.sender]--;
    }
    
    function getFriendCount(address user) external view returns (uint) {
          assert(friendCount[user] < 4);
        return friendCount[user];
    }
}
