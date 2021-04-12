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
/*if (($.context.StatusUpdate.Complaintsstatus === "Z7")||($.context.StatusUpdate.Complaintsstatus === "Z8")||($.context.StatusUpdate.Complaintsstatus === "Y2")){
	if ($.context.Arbitrated=="Approved"){$.context.StatusUpdate.Complaintsstatus = "Z8";}
	else{$.context.StatusUpdate.Complaintsstatus = "Z9";}
}
if (($.context.StatusUpdate.Complaintsstatus === "Y1")||($.context.StatusUpdate.Complaintsstatus === "Y7")){
	if ($.context.Arbitrated=="Approved"){$.context.StatusUpdate.Complaintsstatus = "Y3";}
//	else{$.context.StatusUpdate.Complaintsstatus = "Y7";}
}*/

if (($.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode === "Z7")
||($.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode === "Z8")
||($.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode === "Y2")){
	if ($.context.Arbitrated=="Approved"){$.context.StatusUpdate.Complaintsstatus = "Z8";}
	else{$.context.StatusUpdate.Complaintsstatus = "Z9";}
}
if (($.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode === "Y1")
||($.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode === "Y7")){
	if ($.context.Arbitrated=="Approved"){$.context.StatusUpdate.Complaintsstatus = "Y3";}
//	else{$.context.StatusUpdate.Complaintsstatus = "Y7";}
}
$.context.StatusUpdate.SettlementTrackingUpdate.CurrentStatus = "Completed";	
