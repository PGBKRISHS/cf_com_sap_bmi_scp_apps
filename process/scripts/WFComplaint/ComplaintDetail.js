
var date = new Date();
if ($.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT == "")
{$.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT =  "2";}
$.context.CurrentStatus = "To be approved ";

 $.context.LastUpdated =  date;
$.context.ApprovalLevel = "1";
$.context.ApprovalLevel1 = "0";
var ccmplaintIf = 	{"RuleServiceId": "762e153d711242ffaeccc322f0b347f8",
	"Vocabulary": [{
			"complaintIf": {
			"Country": $.context.Messages.Message2.ServiceRequestPartyCollection.ServiceRequestParty.CountryCode,
			"ComplaintCategory": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceCategoryID,
			"ComplaintStatus": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode,
			//"Value": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostAllocationcontent_KUT,
			"ImmediateSettlement": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT
		}
	}]};
$.context.request = ccmplaintIf;
var Button = {"RuleServiceId": "a0fb2653048e4ed7acf5b33efd39666c",
	"Vocabulary": [{
	"ButtonIf": {
	"Category": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceCategoryID,
	"Status": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode,
	"ImmediateSettlement": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT
	}
	}]};
$.context.ButtonIf = Button;
$.context.ComplaintId = "Customer Complaint: " + $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ID;
$.context.Complainturl = "https://my349294.crm.ondemand.com/sap/public/byd/runtime?bo_ns=http://sap.com/thingTypes&bo=COD_GENERIC&node=Root&operation=OnExtInspect&param.InternalID=" + $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ID + "&param.Type=COD_SRQ_AGENT_TT&sapbyd-agent=TAB"

var emptyBlock;
var foc = [];
// var arr = $.context.Messages.Message8.ServiceRequestItemQuantityMeasureUnitCodeCollection.CodeList;
// for(var i=0; i<foc.length; i++){
// var text = arr.filter(function(item){
//     return item.Code == foc[i].QuantityMeasureUnitCode;         
// })
// foc[i].QuantityMeasureUnitCode = text[0].Description;
// }
if ($.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem === undefined) {
	emptyBlock = "X";
} else {

	if ($.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.length == undefined) {
		foc.push($.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem);
	} else {
		if ($.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.length > 0) {
			foc = $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem;
		}
	}
}




// var orderInf = {
// 	"foc": foc

// };

// $.context.ItemInfo = orderInf;

var foc1 = [];
var orderInf1 = {
    "Code": "ZCM1",
    "Description": "S4 Purchase Requisition"
}
foc1.push(orderInf1);
orderInf1 = {
    "Code": "ZCM2",
    "Description": "S4 Return Order > FOC Order"
}
foc1.push(orderInf1);
orderInf1= {
    "Code": "ZCM3",
    "Description": "S4 Return Order > Credit Note"
}
foc1.push(orderInf1);
orderInf1= {
    "Code": "ZCM4",
    "Description": "S4 Credit"
}
foc1.push(orderInf1);
var arr = $.context.Messages.Message8.ServiceRequestItemQuantityMeasureUnitCodeCollection.CodeList;

for(var i=0; i<foc.length; i++){
for(var j=0; j<foc1.length; j++){
    if(foc[i].UserServiceTransactionProcessingTypeCode === foc1[j].Code){
       foc[i].UserServiceTransactionProcessingTypeCode = foc1[j].Description; 
    }
}
for(var k = 0 ;  k<arr.length;k++)
{
    if(foc[i].QuantityMeasureUnitCode === arr[k].Code)
    {
        foc[i].QuantityMeasureUnitCode = arr[k].Description; 
    }
}
}
var orderInf = {
	"foc": foc

};
$.context.ItemInfo = orderInf;
var contact = [];


contact = $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestParty.ServiceRequestParty;
for(var i=0; i<contact.length; i++){
    if(contact[i].PartyTypeCode === "147"){
 $.context.ContactID =  contact[i].PartyID;
 $.context.ContactName = contact[i].FormattedName;
    }

}