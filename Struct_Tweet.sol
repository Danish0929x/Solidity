// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract StructExample {
    // Define a struct
    struct Tweet {
        address author;
        string content;      
        uint timestamp; 
        uint256 likes;
    }

    // Mapping to store tweets for each user
    mapping(address => Tweet[]) public userTweets;

    // Function to create a new tweet
    function createTweet(string memory _content) public {
        Tweet memory newTweet = Tweet({
            author: msg.sender,
            content: _content,
            timestamp: block.timestamp,
            likes: 2
        });
        userTweets[msg.sender].push(newTweet); // Add the tweet to the user's array
    }

      // Function to get specific tweets for a specific user
    function getTweet(address _user, uint _i) public view returns (Tweet memory) {
        return userTweets[_user][_i];
    }

    // Function to get all tweets for a specific user
    function getTweets(address _user) public view returns (Tweet[] memory) {
        return userTweets[_user];
    }
}
