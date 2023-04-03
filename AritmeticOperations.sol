pragma solidity 0.8.0;

contract aritmeticoperations {

    int number1 = 100;  
    int number2 = -10;

    uint number3 = 10;  
    uint number4= 100;


    //external fonksiyonlar sadece dışarıdan çağırılabilir. Kontrat içinden çağırılamaz.
    //internal fonksiyonlar kontrat içinden çağırılabilirler ama dışarıya açık değillerdir.



    function sum() public returns(int){

        return number1+number2;    // Toplama işlemi yaptık.
    }

    function sub() public returns(uint){

        return number4 - number3;   //Çıkarma işlemi yaptık.
    }

    function sum2() public returns(int){

        return number1 + int(number4); //İkisi farklı veri tipinde olduğu için aynı duruma getirmemiz gerekti. İnt kullanarak hallettik.
    }

    function set_number1(int value) public {   //Value değişkeni dışardan veri girebilmemizi sağlar.

        number1 = value; //number1'i value ye eşitleyerek dışardan girilecek sayıyı number1 e atamamız sağlandı.
    }

    function get_number1() public returns(int){

        return number1;
    }

    function set_number2(int value) public{

        number2 = value;
    }

    function get_number2() public returns(int){
        
        return number2;
    }


}
