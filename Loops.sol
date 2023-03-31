pragma solidity 0.8.0;

contract loops {

    function _while(uint _value) public returns(uint){  

       while(_value <1000) {  // while bir sayı değeri alır ve bu değeri 1000'e kadar arttırır. 

        _value+=1;
       }

        return value;
    }

    function for_loop() public returns(uint){  // for loop 0'dan 200'e kadar bir sayı aralığında döngü yapar ve her adımda "count" değişkenini 2 artırır.
        uint count = 0;
        
        for(uint i=0; i<200; i++){

            count +=2;
        }

        return count;

    }

    function do_while() public {


    }



}