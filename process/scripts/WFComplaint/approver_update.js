/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var product = {
		productDetails: productName  + " " + productDescription,
		workflowStep: taskDefinitionId
};

// write 'product' node to workflow context
$.context.product = product;
*/
/*var status = {
	"ComplaintID"  :  $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ObjectID,
	"ChildID": child, // $.context.Messages.Message3.ServiceRequestTextCollection.ServiceRequestText[0].ObjectID,
	"Complaintsstatus": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode,
	"CostAllocation": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ZCostAllocation_KUT,
	"CostSplit": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostSplit_New_KUT,
	"SettlementTrackingUpdate": {"ApprovalList": {"Level1": "Sales Mgr(To be Approved)", 
												  "Level2": "Sales Dir(To be Approved)",
												  "Level3": "Country Dir(To be Approved)",
												  "Level4": "Chief Commercial(To be Approved)",
								"ApprovalStarted": date,
								"LastUpdated": date,
								"CurrentStatus": "Pending for level 1 approval"
						}
}
			};
$.context.StatusUpdate = status;*/
if ($.context.ApprovalLevel1 == "0"){
	$.context.ApprovalLevel1 = "1";
}
else if ($.context.ApprovalLevel1 == "1"){
$.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList.Level1 = $.context.ApproverId.Result[0].ApproverId.ApproverId + "(To be Approved)";
	$.context.ApprovalLevel1 = "2";
}
else if ($.context.ApprovalLevel1 == "2"){
$.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList.Level2 = $.context.ApproverId.Result[0].ApproverId.ApproverId + "(To be Approved)";
	$.context.ApprovalLevel1 = "3";
}
else if ($.context.ApprovalLevel1 == "3"){
$.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList.Level3 = $.context.ApproverId.Result[0].ApproverId.ApproverId + "(To be Approved)";
	$.context.ApprovalLevel1 = "4";
}
else if ($.context.ApprovalLevel1 == "4"){
$.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList.Level4 = $.context.ApproverId.Result[0].ApproverId.ApproverId + "(To be Approved)";
	$.context.ApprovalLevel1 = "5";
}

var ApproverIf = {"RuleServiceId": "8c8352a976a34857a8ea7b68be9a4eb9",
	"Vocabulary": [{
		"ApproverIdIf": {
	"Country": $.context.Messages.Message2.ServiceRequestPartyCollection.ServiceRequestParty.CountryCode,
	"ComplaintCategory": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceCategoryID,
	"ComplaintStatus": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode,
	"ImmediateSettlement": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT,
	"ApprovalLevel": $.context.ApprovalLevel1
		}
	}]};
$.context.ApproverIdIf = ApproverIf;