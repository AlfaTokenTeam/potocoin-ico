pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract POTOCOIN is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function POTOCOIN(address _owner)  UpgradeableToken(_owner) {
    name = "POTOCOIN";
    symbol = "POTO";
    totalSupply = 500000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}