// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract TweetInArray {

    mapping(address => string []) public userTweets;

      // Function to create a new tweet
    function createTweet(string memory _tweet) public {
        // Add the new tweet to the user's array of tweets
        userTweets[msg.sender].push(_tweet);
    }

    // Function to get all tweets of a specific user
    function getTweets(address _user) public view returns (string[] memory) {
        return userTweets[_user];
    }

    // Function to get the count of tweets for a specific user
    function getTweetCount(address _user) public view returns (uint) {
        return userTweets[_user].length;
    }
   
}
