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
/*var index = 0;
if($.context.CurrentStatus == "Approved"){index = $.context.ApprovalLevel - 2;
 $.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList[index].CurrentStatus = $.context.CurrentStatus;
 $.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList[index].LastUpdated = $.context.LastUpdated;}*/

var i = $.context.ApprovalLevel1 - 1 + 1;

 $.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList[i].CurrentStatus = $.context.CurrentStatus;
 $.context.StatusUpdate.SettlementTrackingUpdate.ApprovalList[i].LastUpdated = $.context.LastUpdated;