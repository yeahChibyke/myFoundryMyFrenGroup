// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract MyFrenGroup {
    string myBestFren;

    struct Fren {
        string name;
        string favNFT;
        string country;
        string twitterHandle;
    }

    Fren[] public listOfFrens;

    mapping(string => string) public nameToFavNFT;
    mapping(string => string) public nameToTwitterHandle;

    function storeBestFren(string memory _myBestFren) public {
        myBestFren = _myBestFren;
    }

    function retrieveBestFren() public view returns (string memory) {
        return myBestFren;
    }

    function addFren(string memory _name, string memory _favNFT, string memory _country, string memory _twitterHandle)
        public
    {
        // Add each fren to the array
        listOfFrens.push(Fren(_name, _favNFT, _country, _twitterHandle));
        // Use mappings to return what is desired
        nameToFavNFT[_name] = _favNFT;
        nameToTwitterHandle[_name] = _twitterHandle;
    }

    function totalNumberOfFrens() public view returns (uint256) {
        uint256 numberOfFrens = listOfFrens.length;
        return numberOfFrens;
    }

    function removeFren(string memory _name) public {
        uint256 frenIndex = 0;
        while (keccak256(abi.encodePacked(listOfFrens[frenIndex].name)) != keccak256(abi.encodePacked(_name))) {
            frenIndex++;
        }
        // Swap the fren to be deleted with the last one
        listOfFrens[frenIndex] = listOfFrens[listOfFrens.length - 1];
        // Remove the last fren
        listOfFrens.pop();
        // Also remove from mappings
        delete nameToFavNFT[_name];
        delete nameToTwitterHandle[_name];
    }
}
// 😎👩🏾🧑🏾🐱‍👤
