# Basics Of Blockchain and Ethereum

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