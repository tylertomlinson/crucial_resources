## On the Command Line

#### Check if Node is installed
  ```shell
    node -v
  ```
#### Check if npm is installed
  ```shell
    npm -v
  ```
#### Installation
  ```shell
    npm i <package>
  ```
#### Create a new npm project/package
  ```shell
    npm init
  ```
#### Execute Node.js programs
  *first typing the node command, followed by the name of the file*
    ```shell
      node myapp.js
    ```
#### Run script in package.json
  ```shell
    npm run <Script>
  ```
#### Update the package
  ```shell
    npm u <package>
  ```
#### Install everything in package.json
  ```shell
    npm install
  ```
#### Install everything in package.json, except devDependecies
  ```shell
    npm install --production
  ```
#### Install a package
  ```shell
    npm install lodash
  ```
#### Install as devDependency
  ```shell
    npm install --save-dev lodash
  ```
#### Lists the installed versions of all dependencies in this software
  ```shell
    npm list
    npm ls
  ```
#### Lists the installed versions of all globally installed packages
  ```shell
    npm list -g --depth 0
  ```
#### Lists the latest versions of all dependencies in this software
  ```shell
    npm view
  ```
#### Lists only the dependencies in this software which are outdated
  ```shell
    npm outdated
  ```
#### Install/Update a package also update package.json with the installed version and package name
  ```shell
    npm install <module-name> --save
  ```
