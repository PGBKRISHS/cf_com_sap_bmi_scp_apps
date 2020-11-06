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
var date = new Date();
var child = $.context.Messages.Message3.ServiceRequestTextCollection.ServiceRequestText[0].ObjectID;
if ($.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode == "Y1"){
	child = $.context.Messages.Message3.ServiceRequestTextCollection.ServiceRequestText[1].ObjectID;
}

var status = {
	"ComplaintID"  :  $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ObjectID,
	"ChildID": child, // $.context.Messages.Message3.ServiceRequestTextCollection.ServiceRequestText[0].ObjectID,
	"Complaintsstatus": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode,
	"CostAllocation": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ZCostAllocation_KUT,
	"CostSplit": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostSplit_New_KUT,
	"SettlementTrackingUpdate": {"ApprovalList": {"Level1": "Not applicable ", 
												  "Level2": "Not applicable ",
												  "Level3": "Not applicable ",
												  "Level4": "Not applicable ",
								"ApprovalStarted": date,
								"LastUpdated": date,
								"CurrentStatus": "Pending for level 1 approval"
						}
}
			};
$.context.StatusUpdate = status;
$.context.ApprovalStepsReq = $.context.response.Result[0].ApprovalSteps.ApprovalStepsReq;