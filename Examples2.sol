pragma solidity 0.8.0;

contract Check {

    int number1;

    address contract_owner;

    constructor(){       // constructor kontrat deploy edildiği anda çalışır. Sadece bir kere çağırılır.
        contract_owner = msg.sender;

        number1 = 100;
    }

    function set_number1(int value) public {

        require(msg.sender = contract_owner); //require içerisindeki koşul doğruysa fonksiyon akışını devam ettirir aksi halde durdurur.
                                               // msg.sender ise bu fonkisyonu çağıran account'un adresidir. 

        number1 = value;
    
    }

    function get_number1() public returns(int){

        return number1;
    }

    
}
