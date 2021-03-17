var i = parseInt($.context.ApprovalLevel1);
$.context.approver_result[i].ApprovedBy = $.context.UserEmailId2.emailDetails.displayName;
$.context.approver_result[i].CurrentStatus = $.context.CurrentStatus;
var concatValue =  $.context.approver_result[i].ApprovalLevel.toLocaleString()
 + ":" + $.context.UserEmailId2.emailDetails.displayName + " ("
 + $.context.CurrentStatus + " on "
+ $.context.LastUpdated + ") // Notes: " + $.context.Comments ;
 $.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList[i].Level = concatValue;
 $.context.StatusUpdate.SettlementTrackingUpdate.LastUpdate = $.context.LastUpdated;
 
 var dateString = $.context.LastUpdated.substring(0,10);
 var timeString = $.context.LastUpdated.substring(11,16);
 var formatDate = dateString.substring(8,10) + "." + dateString.substring(5,7) + "." + dateString.substring(0,4);
 $.context.dateString = dateString;
 var stepValue = $.context.ApprovalStepsReq;
 if(stepValue > (i+1))
 {
     var awaitingValue = $.context.approver_result[i+1].ApprovalLevel.toLocaleString()
 + ":" + $.context.approver_result[i+1].ApproverName + " (Awaiting Approval since " + $.context.LastUpdated + ") //Notes:";
  $.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList[i+1].Level = awaitingValue;
 }
 
 if (i == 0){
       $.context.StatusUpdate.SettlementTrackingUpdate.ApprovalStartDate = $.context.LastUpdated;
 }


