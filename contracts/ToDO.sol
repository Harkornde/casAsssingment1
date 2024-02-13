// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract ToDO{
struct WhatToDO{
    string title;
    string Description;
    bool isTrue;
    uint256 id;
}

WhatToDO[] public toDos;

function passInToDO(string memory _title, string memory _description, bool _isTrue, uint256 _id) external{
 toDos.push(WhatToDO(_title,_description, _isTrue, _id));
}

}