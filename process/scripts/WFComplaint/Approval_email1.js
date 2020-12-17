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
/*
var mailcontext1 = {"from": "bmiukintegrations@bmigroup.com",
"subject": " test mail",
"to": "Bharat.Suman@bmigroup.com",
"cc": "Bharat.Suman@bmigroup.com",
"data": "Dear Sir/Madam,\n\nComplaint ID - Complaint Description is pending for approval.\nPlease follow the below link to take action..\n\nhttps://bmi-group-cf-development-cf-com-sap-bmi-scp-apps-approuter.cfapps.eu10.hana.ondemand.com/cp.portal/site#WorkflowTask-DisplayMyInbox\n\nRegards,\nAdministrator"}
$.context.Mail =  mailcontext1;
*/
var taskDefinitionId = $.usertasks.usertask1.last.id; //$.info.taskDefinitionId;
var newLine = "\n";
var subject = "Complaint " + $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ID + "-" + $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Name + " has been submitted for your approval.";
var dear = "Dear " + $.context.UserEmailId.displayName + newLine + newLine;
var bodyL1 = "Complaint " + $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ID + "-" + $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Name + " has been submitted for your approval.";
var bodyL2 = "To make a decision please click the link below where you will be able to see the details of the subject. "  + newLine;
var bodyL3 = newLine + newLine;
//var https = "https://";
var inboxRef =
	"https://bmi-group-cf-development-cf-com-sap-bmi-scp-apps-approuter.cfapps.eu10.hana.ondemand.com/cp.portal/site#WorkflowTask-DisplayMyInbox?sap-ui-app-id-hint=cross.fnd.fiori.inbox&substitution=true&userSearch=false&/detail/NA/" +	taskDefinitionId + "/TaskCollection(SAP__Origin='NA'%2CInstanceID='" + taskDefinitionId + "'%29 ";
var regards = newLine + newLine + "Regards,\n BMI Workflow Administrator" + newLine + newLine;
var dnr = "**This is an autogenerated email. Please do not reply to this email.**"
var mailBody = dear + bodyL1 + bodyL2 + bodyL3 + inboxRef + regards + dnr;
var emailContext = {
	"from": "bmiukintegrations@bmigroup.com",
	"subject": subject,
	"to": $.context.UserEmailId.emails,
	"cc": "",
	"data": mailBody
};
$.context.Mail = emailContext;