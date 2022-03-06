# Overview
  - It is not a webserver
  - Uses an event-based server execution procedure rather than the multithreaded execution in PHP
  - It is event-based asynchronous functions
  - Includes a powerful set of libraries (modules)

## REPL
    - read–eval–print loop
      - Read state:
        - where it reads the input from a user
      - Eval state:
        - where it evaluates the user’s input
      - Print state:
        - where it prints out the evaluation to the console

  After these states are finished REPL loops through these states repeatedly

  ```shell
    //node is typed in the console to access REPL
      $ node

    //the > indicates that REPL is running
    // anything written after > will be evaluated
      > console.log("HI")

    // REPL has evaluated the line and has printed out HI
      HI
  ```

### Global Object
  - This contains every Node-specific global property
  - Access to this can be obtained by either typing in `console.log(global)` or `global` in the terminal after RPL is running
  - In order to see just the keys `Object.keys(global)` can be used
  - Since global is an object, new properties can be assigned to it via global.name_of_property = 'value_of_property'

  ```javascript
  //Two ways to access global
    > console.log(global)
  //or
    > global
  //Adding new property to global
    > global.name = 'Tyler'
  ```

### Process Object
  - This is the instance of a computer program that is being executed
  - Node has a global process object with useful properties such as NODE_ENV
  - NODE_ENV can be used in an if/else statement to perform different tasks depending which development stage you are in

  ```javascript
    if (process.env.NODE_ENV === 'development'){
      console.log('Welcome to the Development ENV');
    }
  ```
  
### Process.argv
  - This is a property that holds an array of command-line values provided when the current process was initiated
  - The first element in the array is the absolute path to the Node
  - Followed by the path to the file that’s running
  - Then any command-line arguments provided when the process was initiated

  ```javascript
    // Command line values: node web.js testing several features
      console.log(process.argv[2]);
    // 'features' will be printed
  ```

## Modules
- In Node.js files are called modules
- require() is a function used to bring one module into another
- When a file is run directly from Node.js, require.main is set to its module.
  - This means that it is possible to determine whether a file has been run directly by testing require.main === module.
- To get the exact filename that will be loaded when require() is called, use the require.resolve() function
- Modules are cached after the first time they are loaded

### Module Wrapper
 - Node.js will wrap it with a function wrapper that looks like the following:

```javascript
(function(exports, require, module, __filename, __dirname) {
// Module code actually lives in here
});
```
  - This achieves many things:
    - It keeps top-level variables (defined with var, const or let) scoped to the module rather than the global object
    - It helps to provide some global-looking variables that are actually specific to the module
    - This will:
        - keeps top-level variables (defined with var, const or let) scoped to the module rather than the global object
        - helps to provide some global-looking variables that are actually specific to the module
