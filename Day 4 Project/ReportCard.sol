pragma solidity >=0.4.17 <0.7.0;


/*

Question 1:
Make an Ethereum based Report card Submission Smart Contract and
deploy it on Ropsten network
Input - Name, RollNO, Batch, Marks of 4 Subjects and Status(Pass or Fail)
Host it on Ropsten Network with Test

*/

contract ReportCard{
    
    string public name;
    string public rollNo;
    string public batch;
    uint public marathi;
    uint public hindi;
    uint public english;
    uint public science;
    string public status;

    function ReportCard(string newName, string newRollNo, string newBatch, uint newMarathi, uint newHindi, uint newEnglish, uint newScience)public {
        name = newName;
        rollNo = newRollNo;
        batch = newBatch;
        
        //Enter the marks out of 100 for 4 subjects (i.e marathi, hindi, english, science) 
        
        marathi = newMarathi;
        hindi = newHindi;
        english = newEnglish;
        science= newScience;
        
        if(marathi >= 35 && hindi >= 35 && english >= 35 && science >= 35){
            status = "Pass";
        }
        else{
            status = "Fail";
        }
    }
   
    function getDetails()public view returns(string,string,string,uint,uint,uint,uint,string) {
        return(name, rollNo, batch, marathi, hindi, english, science, status);
    }
}
