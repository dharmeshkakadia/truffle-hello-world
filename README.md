truffle-hello-world
===================

A simple example of using [truffle](https://truffleframework.com/) framework for smart contract development. You can install it using `npm install -g truffle`.

1. Initialize the project. This will create an example contract and other boilerplate. 
    ```
    truffle init
    ```
2. Create a contract called HelloWorld and add relevant contract code in `contracts/HelloWorld.sol`.
    ```
    truffle create contract HelloWorld
    ```
3. Create a deployment (aka migration) that will deploy `HelloWorld` contract and add relevant code in generated deploy file under `migrations` folder.
    ```
    truffle create deploy deploy_hello_world
    ```
4. Test it using `truffle develop` and type `deploy --reset`. The output would look something like:
    
    ```
    Connected to existing Truffle Develop session at http://127.0.0.1:9545/

    truffle(develop)> deploy --reset
    Using network 'develop'.

    Running migration: 1_initial_migration.js
    Replacing Migrations...
    ... 0x581e8119af3add9169487cb720fe38a8f04183f538b1984f189ae941bf8027c1
    Migrations: 0x82d50ad3c1091866e258fd0f1a7cc9674609d254
    Saving successful migration to network...
    ... 0x289ae161be6b6cdcea57476a531d45daf5e590a20fecca05e88e1bf699ba2558
    Saving artifacts...
    Running migration: 1532238019_deploy_hello_world.js
    Replacing HelloWorld...
    ... 0x209f8b0c7bb1eb421a9019011314b8c167c3701ae9d44d9c267f44822f2a4d7e
    HelloWorld: 0xeec918d74c746167564401103096d45bbd494b74
    Saving successful migration to network...
    ... 0x7f4c1ab6dc80bd77593671c33a0082c32891f57520e1b09f980b0b3bdcfa6340
    Saving artifacts...
    truffle(develop)>
    ```
5. You can exit truffle session with `.exit` or `ctrl-D`. You can also confirm deployed contracts by running `truffle network`. 
    ```
    Network: UNKNOWN (id: 4447)
    HelloWorld: 0x2eca6fcfef74e2c8d03fbaf0ff6712314c9bd58b
    Migrations: 0x2a504b5e7ec284aca5b6f49716611237239f0b97
    ```

