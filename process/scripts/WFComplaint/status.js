
var ButtonText = { "ButtonText": {
                    "ButtonText": "Reject"
                }};
if ($.context.ButtonText.Result.length === 0){

$.context.ButtonText.Result.push(ButtonText);
}
//$.context.ApprovalStepsReq = $.context.response.Result[0].ApprovalSteps.ApprovalStepsReq;
do{
var approveFlag;
$.context.approverFlag = approveFlag;
var date = new Date();
var ApprovalList = [];
var obj = {};
var dateString = $.context.LastUpdated.substring(0,10);
var timeString = $.context.LastUpdated.substring(11,16);  
var formatDate = dateString.substring(8,10) + "." + dateString.substring(5,7) + "." + dateString.substring(0,4);
 var skiparr = [];
 var splitname = "";
 var approvalist = $.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList;
 
if($.context.approverFlag == true && $.context.ApprovalLevel!= 1)
 {
     for (var i = 0; i < $.context.ApprovalLevel; i++)
     {
        splitname = approvalist[i].level.substring(2).split("(")[0];
        skiparr.push(splitname);
     }
   
 } 
 
 $.context.approverFlag = false;
for (var i = 0; i < $.context.ApprovalStepsReq; i++) {
        if(i==0)
        {
            obj = { 
            "Level":  $.context.approver_result[i].ApprovalLevel.toLocaleString() + ":" + $.context.approver_result[i].ApproverName 
            + " (Awaiting Approval since " + formatDate + " " + timeString + ") //Notes:",
              
		};
        }
        else{
        
		obj = { 
            "Level":  $.context.approver_result[i].ApprovalLevel.toLocaleString() + ":" + $.context.approver_result[i].ApproverName,
              
        };
        if(i+1 < $.context.ApprovalStepsReq)
    {
        var idSlice = $.context.approver_result[i+1].ApproverName.split(',');
        for(var j=0 ; j<idSlice.length ; j++)
        {
            for(var k=0 ; k<skiparr.length; k++)
            {           
           if(skiparr[k].trim() == idSlice[j].trim())
           {
               $.context.approverFlag = true;
               break;
           }
            }
        }
    }
        }
		ApprovalList.push(obj);
    }     
    $.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList =  ApprovalList;
}while($.context.approverFlag == true)  
	