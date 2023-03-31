pragma solidity 0.8.0;

contract loops {

    function _while(uint _value) public returns(uint){

       while(_value <1000) {

        _value+=1;
       }

        return value;
    }

    function for_loop() public returns(uint){
        uint count = 0;
        
        for(uint i=0; i<200; i++){

            count +=2;
        }

        return count;

    }

    function do_while() public {


    }



}