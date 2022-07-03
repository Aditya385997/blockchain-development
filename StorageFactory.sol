pragma solidity ^0.8.0;
import "./SimpleStorage.sol";

//This Contract We Can Also Called As The Manager Which Manages The Variables And Function Of SimpleStorage.sol Contract
contract StorageFactory
{
    SimpleStorage[] public simpleStorageContractArray;

    function createSimpleStorageContract() public
    {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageContractArray.push(simpleStorage);
    }
    function sfStore(uint256 _simpleStorageIndex,uint256 _simpleStorageNumber) public
    {
        //To Access Any Contract with another contract we need two things Address and ABI stands for Application binary interface
       simpleStorageContractArray[_simpleStorageIndex].setFavNum(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256)
    {
        return simpleStorageContractArray[_simpleStorageIndex].getFavNum();
    }

}
