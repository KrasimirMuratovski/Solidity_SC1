//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// import "./SimpleStorage.sol";
import {SimpleStorage} from "./SimpleStorage.sol";


contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorageContracts;//(1)
    address[] public listOfSimpleStorageAddresses;

    function createSimpleSorageContract() public{
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        // listOfSimpleStorageContracts
        listOfSimpleStorageContracts.push(newSimpleStorageContract);

    }

    function sfStore(uint256 _simpleStoreIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        //ABI - Application Binary Interfcae
        // (1)SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStoreIndex];

        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStoreIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStoreIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStoreIndex];
        return mySimpleStorage.retrieve();
    }

}