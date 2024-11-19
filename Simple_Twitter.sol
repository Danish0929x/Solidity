// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Twitter {
    mapping(address => string) public Tweets;

    // Function to create a new tweet
    function createTweet(string memory _tweet) public {
        Tweets[msg.sender] = _tweet;
    }

    // Function to get a tweet by address
    function getTweet(address _owner) public view returns (string memory) {
        return Tweets[_owner];
    }
}
