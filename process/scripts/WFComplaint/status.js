
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
 var dateString = $.context.LastUpdated.substring(0,10);
 var timeString = $.context.LastUpdated.substring(11,16);  
 var formatDate = dateString.substring(8,10) + "." + dateString.substring(5,7) + "." + dateString.substring(0,4);
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
        }
		ApprovalList.push(obj);
    }    
    $.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList =  ApprovalList;
    
	