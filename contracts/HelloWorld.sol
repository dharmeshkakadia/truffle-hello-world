pragma solidity ^0.4.22;


contract HelloWorld {
  address private creator;
  address private caller;
  string private message;
  uint private gas;

  constructor() {
    creator = tx.origin;
    message = 'hello world';
    gas = tx.gasprice;
  }
}
