// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol";
import "../contracts/Vietherum-ViETH.sol";

contract MyTokenTest is MyToken {

    function testTokenInitialValues() public {
        Assert.equal(name(), "Viethereum", "token name did not match");
        Assert.equal(symbol(), "VIETH", "token symbol did not match");
        Assert.equal(decimals(), 18, "token decimals did not match");
        Assert.equal(totalSupply(), 0, "token supply should be zero");
    }
}
