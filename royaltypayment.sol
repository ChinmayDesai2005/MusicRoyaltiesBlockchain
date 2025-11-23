// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "./musicregistry.sol";

contract RoyaltyPayment {
    MusicRegistry public registry;

    constructor(address _registry) {
        registry = MusicRegistry(_registry);
    }

    event RoyaltiesPaid(uint songId, uint amount);

    function payRoyalties(uint _songId) public payable {
        require(msg.value > 0, "No payment sent");

        (
            , // title not needed here
            address payable[] memory collaborators,
            uint[] memory shares
        ) = registry.getSong(_songId);

        for (uint i = 0; i < collaborators.length; i++) {
            uint payment = (msg.value * shares[i]) / 100;
            collaborators[i].transfer(payment);
        }

        emit RoyaltiesPaid(_songId, msg.value);
    }
}
