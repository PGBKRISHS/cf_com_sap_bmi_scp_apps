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
/*var ApproverIf = {"RuleServiceId": "8c8352a976a34857a8ea7b68be9a4eb9",
	"Vocabulary": [{
		"ApproverIdIf": {
	"Country": $.context.Messages.Message2.ServiceRequestPartyCollection.ServiceRequestParty.CountryCode,
	"ComplaintCategory": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceCategoryID,
	"ComplaintStatus": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode,
	"ImmediateSettlement": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT,
	"ApprovalLevel": $.context.ApprovalLevel
		}
	}]};
$.context.ApproverIdIf = ApproverIf;*/
//var approvers = $.context.ApproverIdRes;
/*if (approvers.length > 0) {
	//	approvers[i]
	var ApprovalList = [];
	var obj = {};
	for (var i = 0; i < approvers.length; i++) {
		obj = {
			"ApproverLvl": approvers[i].ApproverLvl.toLocaleString(),
			"Approver": approvers[i].Approvers,
			"Processor": "",
			"Status": "To Be Approved",
			"Comments": "",
			"ForwardTo": null
		};
		ApprovalList.push(obj);
		$.context.redetermineAgents = "";
	}

    $.context.wfStatus.ApprovalList = ApprovalList;  */
    //$.context.ApprovalLevel1 = ApproverIdRes.Result[0].ApproverIdRes[$.context.ApprovalLevel].ApprovalLevel;
   $.context.CurrentUser = $.context.ApproverIdRes.Result[0].ApproverIdRes[0].ApproverId;
