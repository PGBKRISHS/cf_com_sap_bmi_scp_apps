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

var newLine = "\n";
var subject = 'Approval SLA Crossed for Complaint '
+ $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ID ;
var dear = "Dear " + $.context.UserEmailId1.displayName + newLine + newLine;
var bodyL1 = ", Comaplaint " + $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Name +
	newLine;
var bodyL2 =  "pending for approval as the approver has crossed SLA time. Please take action on the same" + newLine;
var inboxRef =  "https://bmi-group-cf-uat-uat-cf-com-sap-bmi-scp-apps-approuter.cfapps.eu10.hana.ondemand.com/cp.portal/site#bpmworkflowmonitor-DisplayInstances"
var regards = newLine + newLine + "Regards,\nAdministrator";
var mailBody = dear + bodyL1 + bodyL2 +  inboxRef + regards;
var emailContext1 = {
	"from": "bmiukintegrations@bmigroup.com",
	"subject": subject,
	"to": $.context.UserEmailId1.emails,
	"cc": "",
	"data": mailBody
};
$.context.Mail1 = emailContext1;