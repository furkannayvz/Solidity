pragma solidity 0.8.0;

contract dummy_token{
string private _name;
string private _symbol;
uint8 private _decimals;
uint private _total_supply;
mapping (address => uint) balance;
constructor(string memory name_, string symbol_, uint decimals_) {

 _name = name_;
 _symbol = symbol_;
 _decimals = decimals_;
}


function name() public view returns(string memory){

    return _name;
}

function symbol() public returns(string memory){
    return _symbol;
}
function decimals() public returns(uint8){
    return _decimals;

}
function total_supply() public returns(uint){ // total supply token'ın toplam arzını döndürür.
    return _total_supply;
}

function balanceOf(address _owner) public View returns(uint256){  // balanceof bu fonksiyon, belirli bir kullanıcının bakiyesini döndürür.
    return balances[_owner];
}
function transfer(address _to, uint256 _amount) public returns(bool){
    require (balances[msg. sender] >= _amount);
    balances[msg.sender] —= _amount;
    balances[_tO] += _amount;
    return true;
}
function mint(address _ to ,uint256 _amount) public {  //mint belirli bir kullanıcıya yeni token'ların dolaşıma sokulması için kullanılır. 
    require(msg.sender == admin);
    balances [_to] += _amount;
    _total_supply += _amount;
}
    function mintFromEther() public payable {
    balances [msg.sender] += msg.value;

}


}