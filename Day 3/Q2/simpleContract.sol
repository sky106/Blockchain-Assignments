pragma solidity >=0.4.17 <0.7.0;

contract myLand{
    
    string public owner; 
    string public value; 
    string public area; 
    string public location; 
    
    function myLand(string newOwner,string newValue,string newArea,string newLoaction) public {
        owner = newOwner;
        value = newValue;
        area = newArea;
        location = newLoaction;
    }
    function setDetails(string newOwner,string newValue,string newArea,string newLoaction) public{
        owner = newOwner;
        value = newValue;
        area = newArea;
        location = newLoaction;
    }
    function getDetails() public view returns(string,string,string,string){
        return(owner,value,area,location);
    }
}