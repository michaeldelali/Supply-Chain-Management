pragma solidity >=0.4.21 <0.6.0;

contract UserRegistry {
  address public owner = msg.sender;

  mapping(string=>string) registry;

modifier onlyBy(address _account)
    {
        require(msg.sender == _account,"Sorry you don't have permission.");
        _;
    }

  function setRole(string memory addr, string memory role) private onlyBy(owner) {
    registry[addr] = role;
  }

  function getRole( string memory addr) private view returns( string memory) {
    return registry[addr];
  }
}
