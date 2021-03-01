
var ButtonText = { "ButtonText": {
                    "ButtonText": "Reject"
                }};
if ($.context.ButtonText.Result.length === 0){

$.context.ButtonText.Result.push(ButtonText);
}
//$.context.ApprovalStepsReq = $.context.response.Result[0].ApprovalSteps.ApprovalStepsReq;

var date = new Date();
	var ApprovalList = [];
    var obj = {};
   
	for (var i = 0; i < $.context.ApprovalStepsReq; i++) {
        if(i==0)
        {
            	obj = { 
            "Level":  $.context.approver_result[i].ApprovalLevel.toLocaleString() + ":" + $.context.approver_result[i].ApproverName 
            + " (Awaiting Approval since " + $.context.LastUpdated + ") //Notes:",
              
		};
        }
        else{
        
		obj = { 
            "Level":  $.context.approver_result[i].ApprovalLevel.toLocaleString() + ":" + $.context.approver_result[i].ApproverName,
              
        };
        }
		ApprovalList.push(obj);
    }
   
        
	
	
    
    $.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList =  ApprovalList;
    
	