// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract ToDO{
struct WhatToDO{
    string title;
    string Description;
    bool isTrue;
}

WhatToDO[] public toDos;

function passInToDO(string memory _title, string memory _description, bool _isTrue) external{
 toDos.push(WhatToDO(_title,_description, _isTrue));
}

function deleteToDo(uint256 clickIndex) public {
        require(clickIndex < toDos.length, "Index out of bounds");
        toDos[clickIndex] = toDos[toDos.length - 1];
        toDos.pop();
    }

    function updateToDo(
        uint256 index,
        string memory _title,
        string memory _description,
        bool _isTrue
    ) public {
        require(index < toDos.length, "Index out of bounds");
        toDos[index].title = _title;
        toDos[index].Description = _description;
        toDos[index].isTrue = _isTrue;
    }

}