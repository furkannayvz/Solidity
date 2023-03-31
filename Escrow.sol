pragma solidity 0.8.0;

contract Escrow {

    mapping(address => uint) balances;  //mapping kayıt defteridir. Burada her address için bir uint değeri açmamızı sağladı.
    address admin;
    uint commission_percent = 1;

    constructor(uint ){
        admin = msg.sender;
        commission_percent = _commission_percent;

    }


    function DepositEther() external payable { //Ethereum giriş çıkışa varsa payable kullanılır.
        require(msg.sender => 1 ether);
        balances[msg.sender] +=msg.value;   //Kullanıcının bakiyesini güncelledik.


    }

    function TransferEtherWithCommission(address receiver ,uint amount) external{

        require(msg.sender == admin);
        require(address(this).balance >= amount);
        user_balances[admin] += amount/100 * commission_percent;
        test_transfer_internal(receiver, amount - amount/100 * commission_percent);


    }

    function test_transfer_internal(address _receiver, uint _amout) internal {

        payable(_receiver).transfer(_amount);
    }

    function TransferEtherWithoutCommission(address receiver ,uint amount) external payable{

        require(msg.sender == admin);
        require(address(this).balance >= amount);
        payable(receiver).transfer(amount);
    }



    function CollectComission() external payable {
        require(msg.sender == admin);
        payable(admin).transfer(user_balances[admin]);
        user_balances[admin] = 0;
    

    }

    function setAdmin(address newAdmin) external{
        require(msg.sender == admin);
        require(newAdmin != address(0));
        admin = newAdmin;

    }

    function getCollectedCommission() external view returns(uint) {

        return user_balances[admin];
    }

       function getUserDeposit() external view returns(uint) {

        return user_balances[_user];
    }
}