pragma solidity 0.8.0;
contract RDToken {
string private _name;
string private _symbol;
uint8 private _decimals;
uint private _total_supply;
mapping (address => uint) balances;
address private _admin;
mapping (address => mapping(address => uint)) allowances;
constructor(string memory name_, string memory symbol_, uint8 decimals_){

name = name_;
_symbol = symbol_;
_decimals = decimals_;
_admin = msg.sender;

}
//token adını çağırana iletir


function name() public view returns(string memory){
return _name;
}
function symbol() public view returns(string memory){
return _symbol;
}
function decimals() public view returns(uint8){
return _decimals;
}

function total_supply() public view returns(uint){

    return _total_supply;
}

function balanceOf(address _owner) public View returns(uint){
return balances[_owner];
}
function mint(address _to, uint _amount) public returns(bool){

    require(_admin ==msg.sender);
    require(_total_supply < _total_supply + _amount);   
    balances[_to] += _amount;
    _total_supply += _amount;
    return true;


    function mint_by_ether() public payable returns(bool){

    require(balances[msg.sender] < balances[msg.sender] + msg.value);
    balances [msg. sender] += msg.value;    
    return true;
    }



function transfer(address _to, uint _amount) public returns(bool){
    require(balances[msg.sender] >= _amount); 
    balances[msg.sender] —= _amount;
    balances[_to] += _amount;
    return true;
}


function transfer_from(address _owner, address _ top uint _amount) public returns(bool){
    require(balances[_owner] >= _amount);
    require(allowances[_owner][msg.sender] >= _amount); 
    balances[_owner] -= _amount;
    allowances[_owner][msg.sender] -=  _amount;
    balances [_to] += _amount;
    return true;
}


function approve(address _spender, uint _amount) public returns(bool){
    allowances[msg.sender][_spender] = _amount;
    return true;
}
function allowance(address _owner, address _spender) public view returns(uint){
    return allowances[_owner][_spender];
}
























































}