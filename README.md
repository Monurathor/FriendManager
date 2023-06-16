
# FriendManager Smart Contract
This Solidity smart contract allows users to manage their friends by adding or removing them. Each user has a maximum limit of 4 friends.

# Functions
# addFriend()
Adds a new friend to the caller's friend list.

Modifiers: None
Parameters: None
Returns: None
Error Handling:
Uses require to check if the caller's friend count is already 4.
Reverts the transaction and displays the error message "Maximum number of friends reached" if the condition is not met.
# removeFriend()
Removes a friend from the caller's friend list.

Modifiers: None
Parameters: None
Returns: None
Error Handling:
Uses an if statement to check if the caller's friend count is already 0.
Reverts the transaction and displays the error message "No friends to remove" if the condition is met.
Otherwise, decrements the friend count.
# getFriendCount(address user)
Returns the number of friends for a given user.

Modifiers: None
Parameters:
user (address): The address of the user to retrieve the friend count for.
Returns:
uint: The number of friends for the specified user.
Error Handling:
Uses assert to check if the friend count for the specified user exceeds 4.
Throws an assertion error if the condition is not satisfied.
