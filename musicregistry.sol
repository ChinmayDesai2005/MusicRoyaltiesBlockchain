// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract MusicRegistry {
    struct Song {
        uint id;
        string title;
        address payable[] collaborators;
        uint[] shares; // percentage shares, must add up to 100
    }

    mapping(uint => Song) public songs;
    uint public songCount;

    event SongRegistered(uint songId, string title);

    function registerSong(
        string memory _title,
        address payable[] memory _collaborators,
        uint[] memory _shares
    ) public {
        require(_collaborators.length == _shares.length, "Mismatch between collaborators and shares");

        uint totalShare;
        for (uint i = 0; i < _shares.length; i++) {
            totalShare += _shares[i];
        }
        require(totalShare == 100, "Shares must equal 100");

        songCount++;
        songs[songCount] = Song(songCount, _title, _collaborators, _shares);

        emit SongRegistered(songCount, _title);
    }

    function getSong(uint _songId) public view returns (
        string memory title,
        address payable[] memory collaborators,
        uint[] memory shares
    ) {
        Song storage s = songs[_songId];
        return (s.title, s.collaborators, s.shares);
    }
}
