pragma solidity ^0.8.0;

//Example Of Inheritance And Method Override In Solidity
import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage
{
    //To Overide The Method First The Method in Parent Class Or Contract Should be Virtual Key Word 
    //The Child Class Or Contract  Method Should HAve A KEy Word override
    function setFavNum(uint256 _favNumber) public override
    {
        favNumber = _favNumber+5;
    }
}
