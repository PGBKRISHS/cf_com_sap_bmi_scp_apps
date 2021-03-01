var i = $.context.ApprovalLevel - 1;
var taskDefinitionId = $.usertasks.usertask1.last.id; //$.info.taskDefinitionId;
var newLine = "\n";
var subject = "Request for Approval of Customer Complaint (ID:  " + $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ID + " )";
if ($.context.approver_result.length == undefined){
    var dear = "Hello Mr." + $.context.approver_result.ApproverName + newLine + newLine;
}else{var dear = "Hello Mr." + $.context.approver_result[i].ApproverName + newLine + newLine;}

var bodyL1 = "A Customer Complaint has been submitted for your approval."+ newLine + newLine;
var bodyL2 = "Complaint ID: " + $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ID + newLine;
var bodyL3 = "Complaint Subject: " + $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Name + newLine + newLine;

var bodyL4 = "Please click the below link to review the details and provide your approval decision. "  + newLine;
//var https = "https://";
var inboxRef =
	"https://bmi-group-cf-development-cf-com-sap-bmi-scp-apps-approuter.cfapps.eu10.hana.ondemand.com/cp.portal/site#WorkflowTask-DisplayMyInbox?sap-ui-app-id-hint=cross.fnd.fiori.inbox&substitution=true&userSearch=false&/detail/NA/" +	taskDefinitionId + "/TaskCollection(SAP__Origin='NA'%2CInstanceID='" + taskDefinitionId + "'%29 ";

var complaint = newLine + newLine + "Complaint Link"

var inboxRef1 = newLine + newLine + $.context.Complainturl;

    var regards = newLine + newLine + "Regards,\nBMI Workflow Administrator" + newLine + newLine;
var dnr = "**If the approval is still pending with you, a reminder e-mail will be sent again after next 24 hours**" + newLine + "**This is an auto-generated email. Please do not reply to this e-mail.**";
var mailBody = dear + bodyL1 + bodyL2 + bodyL3 + bodyL4 + inboxRef + complaint + inboxRef1 + regards + dnr;
if ($.context.approver_result.length == undefined){
    var emailid =  $.context.approver_result.ApproverEmail;
}else{var emailid =  $.context.approver_result[i].ApproverEmail;}
var emailContext = {
	"from": "bmiukintegrations@bmigroup.com",
    "subject": subject,
     "to": emailid,
	"cc": "",
	"data": mailBody
};
$.context.Mail = emailContext;
