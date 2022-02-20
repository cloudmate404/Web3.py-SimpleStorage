// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    // THIS WILL GET INITIALIZED TO 0!!
    uint256  favoriteNumber;

    //THIS IS LIKE CREATING AN OBJECT
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //THIS IS A DYNAMIC ARRAY(iT CAN INCREASE AND DECREASE)
    People[] public xyz;
    mapping(string => uint256) public nameToFavoriteNumber;

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        xyz.push(People({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }


    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    





    // bool favoriteBool;
    // string favoriteString = "String";
    // int256 favoriteInt = -5;
    // address favoriteAddress = 0xb2Cff38e6130F2043fDaB93F9FE1b0718cB29bd2;
    // bytes32 favoriteBytes = "cat";
}



contract Test2{
    struct Cars{
        string carName;
        uint256 carNum;
    }

    Cars[] public carArray;
    mapping(string => uint256) public nameForNum;

    function addCar(string memory _carName, uint256 _carNum) public{
        carArray.push(Cars({carName: _carName, carNum: _carNum}));
        nameForNum[_carName] =_carNum;
    }
}



contract Testing {
    int256  num1;
    int256  num2;

    function getResult() public view returns(int256 product, int256 sum){
        product = num1 * num2;
        sum = num1 + num2;
    }

    function storeNum1(int256 _num1) public {
        num1 = _num1;
    }

    function storeNum2(int256 _num2) public {
        num2 = _num2;
    }
}
