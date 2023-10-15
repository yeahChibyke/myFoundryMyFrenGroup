## MyFrenGroup 😎👩🏾🧑🏾🐱‍👤

**You seem super cool, and I am sure you have a lot of awesome friends. This `MyFrenGroup` contract will help you store their names, Twitter(now X) handles, their countries of origin, and their favourite NFTs. Super cool! Right?**

`MyFrenGroup` contains:
-   **Fren**: Struct that contains elements for details input.
-   **listOfFrens**: Public array that will contain list of friends and their details.
-   **nameToFavNFT**: Public mapping of name of friend to their favourite NFT.
-   **nameToTwitterHandle**: Public mapping of name of friend to their Twitter handle.


## Functions

### storeBestFren()

```
    function storeBestFren(string memory _myBestFren) public {
        myBestFren = _myBestFren;
    }
```

### retrieveBestFren()

```
    function retrieveBestFren() public view returns (string memory) {
        return myBestFren;
    }
```

### addFren()

```
    function addFren(string memory _name, string memory _favNFT, string memory _country, string memory _twitterHandle)
        public
    {
        listOfFrens.push(Fren(_name, _favNFT, _country, _twitterHandle));
        nameToFavNFT[_name] = _favNFT;
        nameToTwitterHandle[_name] = _twitterHandle;
    }
```

### removeFren()

```
    function removeFren(string memory _name) public {
        uint256 frenIndex = 0;
        while (keccak256(abi.encodePacked(listOfFrens[frenIndex].name)) != keccak256(abi.encodePacked(_name))) {
            frenIndex++;
        }
        listOfFrens[frenIndex] = listOfFrens[listOfFrens.length - 1];
        listOfFrens.pop();
        delete nameToFavNFT[_name];
        delete nameToTwitterHandle[_name];
    }
```

### totalNumberOfFrens()

```
    function totalNumberOfFrens() public view returns (uint256) {
        uint256 numberOfFrens = listOfFrens.length;
        return numberOfFrens;
    }
```
