var newLine = "\n";
var subject = 'Approval SLA Crossed for Complaint '
+ $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ID ;
var dear = "Dear " + $.context.UserEmailId1.displayName + newLine + newLine;
var bodyL1 = ", Complaint " + $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Name +
	newLine;
var bodyL2 =  "pending for approval as the approver has crossed SLA time. Please take action on the same" + newLine;
var inboxRef =  "https://bmicfprd-prd-cf-com-sap-bmi-scp-apps-approuter.cfapps.eu10.hana.ondemand.com/cp.portal/site#bpmworkflowmonitor-DisplayInstances"
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