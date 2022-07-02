//First Line Of Smart Contract we Always defines The Solidity version since it is updating
pragma solidity ^0.8.7;

//write a contract, Contract is similar to a class
contract SimpleStorage
{
   uint256 favNumber;

   mapping(string => uint256) public searchByName;

   struct People
   {
       uint256 favNumber;
       string name;
   }

   People [] public people;

   function setFavNum(uint256 _favNumber) public
   {
       favNumber = _favNumber;
   }

   function getFavNum() public view returns(uint256)
   {
       return favNumber;
   }
   function addPeople(string memory _name,uint256 _favNumber) public
   {
       people.push(People(_favNumber,_name));
       searchByName [_name] = _favNumber;
   }
}
