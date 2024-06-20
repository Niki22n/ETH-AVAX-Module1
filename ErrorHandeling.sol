//SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

contract ErrorHandeling {
  
    uint y=10;

    function assertTesting(uint num) public pure{
        assert(num!=0);
    }

    function multiplication(uint x) public view returns (uint){
        require(x>0,"the value should be greater than zero as multiplying by zero gives zero itself.");
        return x*y;

    }

    function division (uint _num, uint _denom) public pure returns (uint){
        if(_num < _denom){
           
            revert("numerator should be greater than denominator");
            
        }
        uint z=_num/_denom;
        return z;
       

    }
}
