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
//context creation for request to be sent to business rule for determining the Approval Id
var date = new Date();
//var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();

var Delegate = {"RuleServiceId": "a58eca26dc374da0b0231b11f7039200",
	"Vocabulary": [{
		"DelegateIf":{
	"ApproverId": $.context.ApproverId.Result[0].ApproverId.ApproverId,
	"ApprovalLevel": $.context.ApprovalLevel,
	"Date": date
		}
	}]};
$.context.DelegateIf = Delegate;