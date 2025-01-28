// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract CopyrightRegistry {
    // Mapping to store the copyright owner for each content ID (e.g., book or artwork)
    mapping(uint => address) private contentOwners;
    
    // Mapping to store the name of the content (e.g., book title, artwork title)
    mapping(uint => string) private contentTitles;
    
    // Event to log when a copyright is registered
    event CopyrightRegistered(uint contentId, string title, address owner);

    // Function to register copyright (state-changing)
    function registerCopyright(uint _contentId, string memory _title) public {
        contentOwners[_contentId] = msg.sender;  // Store the owner's address
        contentTitles[_contentId] = _title;      // Store the title of the content

        // Emit an event to log the copyright registration
        emit CopyrightRegistered(_contentId, _title, msg.sender);
    }

    // View function to get the owner of a content by content ID
    function getCopyrightOwner(uint _contentId) public view returns (address) {
        return contentOwners[_contentId];  // Returns the owner's address
    }

    // View function to get the title of a content by content ID
    function getContentTitle(uint _contentId) public view returns (string memory) {
        return contentTitles[_contentId];  // Returns the title of the content
    }
}
