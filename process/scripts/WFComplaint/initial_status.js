
// var date1 = new Date();
//             var oDateFormat = sap.ui.core.format.DateFormat.getDateTimeInstance({pattern: "dd/MM/yyyy HH:mm"});
//             var newdate = new Date(date1);
//             var date = oDateFormat.format(newdate);
//$.context.currentDate = new Date(1000000000000);
// stores "2001-09-09T01:46:40.000Z"
if($.context.Messages.Message3.ServiceRequestTextCollection.ServiceRequestText.length == undefined)
{
    var child = $.context.Messages.Message3.ServiceRequestTextCollection.ServiceRequestText.ObjectID;
}
else
{
for(var i =0 ; i< $.context.Messages.Message3.ServiceRequestTextCollection.ServiceRequestText.length ; i++)
{
    if($.context.Messages.Message3.ServiceRequestTextCollection.ServiceRequestText[i].TypeCode === "10008")
    {
        var child = $.context.Messages.Message3.ServiceRequestTextCollection.ServiceRequestText[i].ObjectID;
    }
}
}

var status = {
    "ComplaintID"  :  $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ObjectID,
    "ChildID": child, // $.context.Messages.Message3.ServiceRequestTextCollection.ServiceRequestText[0].ObjectID,
    "Complaintsstatus": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode,
    "CostAllocation": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ZCostAllocation_KUT,
    "CostSplit": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostSplit_New_KUT,
    
    "SettlementTrackingUpdate": {"ApprovalList": [],
                                "CurrentStatus": "Running",
                                "ApprovalStartDate": "Yet to Start",
	                            "LastUpdate": "Yet to Start"
                                }
            };
$.context.StatusUpdate = status;

//$.context.ApprovalStepsReq = $.context.response.Result[0].ApprovalSteps.ApprovalStepsReq;

//$.context.ApprovalStepsReq = $.context.response.Result[0].ApprovalSteps.ApprovalStepsReq;
$.context.Resolver_Group = $.context.response.Result[0].Resolver_Group.Resolver_Group;
//$.context.ApprovalStepsReq = $.context.response.Result[0].ApprovalSteps.ApprovalStepsReq;
var ApproverIf = {"RuleServiceId": "8c8352a976a34857a8ea7b68be9a4eb9",
    "Vocabulary": [{
        "ApproverIdIf": {
    "Country": $.context.Messages.Message2.ServiceRequestPartyCollection.ServiceRequestParty.CountryCode,
    "Resolver_Group": $.context.Resolver_Group,
    "Complaint_Value": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostAllocationcontent_KUT
    //"ComplaintCategory": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceCategoryID,
    //"ComplaintStatus": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode,
    //"ImmediateSettlement": $.context.Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT
        }
    }]};
$.context.ApproverIdIf = ApproverIf;

