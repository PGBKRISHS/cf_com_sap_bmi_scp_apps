/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;


// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;.Country

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
//context creation for request to be sent to business rule for determining the Steps of approvals
if ($.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT == "")
{$.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT =  "2";}
$.context.CurrentStatus = " ";
$.context.ApprovalLevel = "1";
$.context.ApprovalLevel1 = "0";
var ccmplaintIf = 	{"RuleServiceId": "762e153d711242ffaeccc322f0b347f8",
	"Vocabulary": [{
			"complaintIf": {
			"Country": $.context.Messages.Message2.ServiceRequestPartyCollection.ServiceRequestParty.CountryCode,
			"ComplaintCategory": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceCategoryID,
			"ComplaintStatus": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode,
			"Value": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostAllocationcontent_KUT,
			"ImmediateSettlement": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT
		}
	}]};
$.context.request = ccmplaintIf;
//context creation for request to be sent to business rule for determining the Approval Id
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
var date = new Date();
//var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();

/*var Delegate = {"RuleServiceId": "a58eca26dc374da0b0231b11f7039200",
	"Vocabulary": [{
		"DelegateIf":{
	"ApproverId": $.context.ApproverId.Result[0].ApproverId.ApproverId,
	"ApprovalLevel": $.context.ApprovalLevel,
	"Date": date
		}
	}]};
$.context.DelegateIf = Delegate;*/

var Button = {"RuleServiceId": "a0fb2653048e4ed7acf5b33efd39666c",
	"Vocabulary": [{
	"ButtonIf": {
	"Category": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceCategoryID,
	"Status": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode,
	"ImmediateSettlement": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT
	}
	}]};
$.context.ButtonIf = Button;
/*
var status = {
	"Approval List": {"Level 1": "Sales Mgr(Approved)", 
					  "Level 2": "Sales Dir(Approved)",
					  "Level 3": "Country Dir(To be Approved)"
		
						},
					  	"Approval Started": date,
					  	"Last Updated": date,
					  	"Current Status": "Pending for level 2 approval"

			};

$.context.StatusUpdate = status;*/