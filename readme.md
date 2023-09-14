# Basics Of Blockchain and Ethereum

## Resources
 - [Ethereum Official Documentation](https://ethereum.org/en/developers/docs/)
 - [Solidity Official Documentation](https://docs.soliditylang.org/en/v0.8.21/)
 - [Mastering Ethereum Book](https://github.com/ethereumbook/ethereumbook)
 - [Ethereum Whitepaper](https://ethereum.org/en/whitepaper/)

## Documentation of My Learning

### Day 1 - Day 4

- ``Pragma is used on top of every solidity smart contract to specify the version of solidity``

    ```sh
    pragma solidity <version>;
    pragma solidity 0.8.18; 
    ```

- ``contract keyword in solidity is similar to class in any other OOPs. It indicates that the code below is a contract.``

    ```sh
    contract <contractName>{
        // Code here
    }

    contract FundContract{
        // Code Here
    }
    ```

## Data Types in Solidity

### Built in Data Types

- **uint** : uint means unsigned integer. Unsigned integer can hold only positive whole integer. `It can be declared as uint8 to uint256 on the multiples of 8 depending on the size of the data.`
    ```sh
    uint private myUnsignedInt = 5;
    uint256 public anotherUint = 2;
    ```

- **int** : int means signed integer. This data type can hold both negative and positive whole integer. `It can also be declared from int8 to int256 on the multiple of 8, depending on the size of data.`

    ```sh
    int public myInteger = 5;
    int32 public anotherInteger = 152;        
    ```

- **bool** : bool is simply boolean which can store either `true` or `false` values. 

    ```sh
    bool public isPaid = false;
    bool public isVoted = true;
    ```

- **string** : string are basically the arrays of bytes. It can store a set of characters.

    ```sh
    string public myName = "Nishant";
    string private anotherString = "ab12!@-";
    ```

- **address** : address data type stores the address of the parties involved in a transaction. Example: address of wallet

    ```sh
    address public walletAddress = 0x0000ffsjfksasfjlkfjlk;
    ```

- **array** : Arrays simply are the collection of some datas. There can be arrays of any data types.

    ```sh
    data_type[] <access_modifier> array_name;
    ```

    If we want to create an array that can accomodate fix number of datas inside it or simply array of specific length, we can give a size to array. In the below example, replace size with the desired size.

    ```sh
    uint256[size] public arrayWithSize;
    ```

- **bytes** : Will Add Later after learning in detail

### Custom Data Types

We can create a complex data-type according to our need in solidity. For achieving this feat, we need to use ***struct***, that creates a new custom data type by combining existing built-in data types.

Syntax for creating a new data-type using struct is:

```sh
struct <structName> {
    // Codes here
}
```

``Example:``

```sh
struct Person {
    string name;
    uint256 donatedAmount;
}
```

We can create a new variable of Person type directly and implement it in the way we like.

```sh
Person firstPerson = Person({name:"Nishant", donatedAmount:1.75});
```

## Function

Function are a block of code that can be called multiple times, without having to write codes redundantly.

```sh
function function_name(uint arg1, int arg2, string arg3, ...) <access> <type> {

}
```

### Access modifiers in a function 

- **public** : Adding public modifer to a function (applicable for variables too) makes the particular function (or variable) accessible to everyone on blockchain, who is interacting with the smart contract.

    ```sh
    function myFunction() public {
        // code
    }
    ```

- **private** : Adding private modifer to a function (applicable for variables too) makes the particular function (or variable) accessible only within the scope of the contract, where it is declared.

    ```sh
    function myFunction() private {
        // code
    }
    ```

### Types of function

- **view**: A view function is allowed to read state of the contract but is not allowed to modify state of the contract. No gas is used by view function. ```However if called inside a function which costs gas, the view function costs gas too.```

    ```sh
    function viewFunction() public view {
        // code
    }
    ```

- **pure**: A pure function is neither allowed to read nor to modify state of the contract. It is primarily used to write some specific algorithms, that doesn't need to read the storage. ``It doesn't use gas primarily, however if called inside a function which costs gas, the pure function costs gas too.``

    ```sh
    function pureFunction() public pure {
        // code
    }
    ```

- **payable** : A payable function enables the ability of a function to perform transaction on the blockchain. Payable function definitely costs gas.

    ```sh
    function payableFunction() public payable {
        // code here
    }
    ```

## Mappings in solidity

Unlike other programming languages like Javascript or Python, we cannot directly create a map to store a key value pairs in Solidity. We should declare the mappings by ourselves.

```sh
mapping(key_data_type => value_data_type) <access> mapName;
```

Example: 

```sh
mapping(uint256 => string) public intToStringMapping;
```

## Data Locations

Data Locations are special commands that can be added to array, struct and mappings to specify whether the value should be stored temporarily or permanently in a blockchain.

### Temporary Variables
- **calldata** : Calldata is data location given to variables whose values cannot be modified(immutable). The value stored with calldata are temporary.

```sh
string calldata myString;
```

- **memory** : Memory is a data location given to a variable whose value can be modified (mutable). The value stored with memory are also temporary.

```sh
string memory myString;
```

### Permanent Variables

- **storage** : Storage is data location, which stores the value of a variable in the storage permanently. The value of the variable specified as storage are mutable.

```sh
string storage myString;
```

Stack, Code and Logs data locations will be documented later after learning in detail.

## Imports in Solidity

In solidity, a smart contract written in a separate file can be imported to the other by using the `import` keyword followed by the path of the solidity smart contract. Imports are generally specified on top of the file below pragma.

```sh
import './SmartContract1.sol';
import './SmartContract2.sol';
```

## Instances of contract

An instance of contract can be created, which returns the address of the contract, whose object is created. `new` keyword is used for allocation.

```sh
SimpleContract simpleContract = new SimpleContract();
```

## Inheritance and Overriding

**Inheritance** : A solidity contract is able to inherit other contract. `is` keyword is used for inheritance.

```sh
contract ExtendedContract is BaseContract {
    // Code
}
```

**Override**: A function defined in the parent contract can be overridden in the child contract. To achieve this, `override` keyword is used. Some important points to note are:

- A function can be overridden only if it is defined as a ***virtual*** function in the parent contract. It can be defined as 

```sh
contract BaseContract {
    function functn() public virtual{
        // Code 
    }
}
```
- ***override*** keyword must be used in the children contracts to override an existing function and define it in a new way.

```sh
contract ExtendedContract is BaseContract {
    function functn() public override{
        // Code
    }
}
```

### Day 5 
