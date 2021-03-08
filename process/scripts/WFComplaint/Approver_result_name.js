
$.context.ApprovalStepsReq = $.context.ApproverIdRes.Result[0].ApproverIdRes.length.toLocaleString();

var approver_result = [];
    var obj = {};
    for (var i = 0; i < $.context.ApproverIdRes.Result[0].ApproverIdRes.length; i++) {
        obj = {         "ApproverId": $.context.ApproverIdRes.Result[0].ApproverIdRes[i].ApproverId,
                        "ApprovalLevel": $.context.ApproverIdRes.Result[0].ApproverIdRes[i].ApprovalLevel.toLocaleString(),
                        "ApproverName": "",
                        "ApprovedBy": "",
                        "ApproverEmail": "",
                        "CurrentStatus": ""
           
        };
        approver_result.push(obj);
        //$.context.ApprovalStepsReq = parseInt($.context.ApprovalStepsReq) + 1;
    }

$.context.approver_result =  approver_result;
$.context.counter = 0;
$.context.getusername = "X";
var users;
var useremails;
var usersList;
var userstab = [];
var approvers = [];
$.context.getUserDetailFromIAS = "";
if ($.context.ApproverIdRes.Result[0].ApproverIdRes.length > 0) {
    approvers = $.context.ApproverIdRes.Result[0].ApproverIdRes;
    for (var p = 0; p < approvers.length; p++) {
        users = approvers[p].ApproverId.replace(" , ",",");
        if (users != null) {
            if (usersList == null) {
                usersList = users;
            } else {
                usersList = usersList + "," + users;
            }
            $.context.getUserDetailFromIAS = "X";
        }
    }
    userstab = usersList.split(",");
    
    $.context.UserEmailIf1 = {
        "UserEmailIdIf": userstab
    };
}
$.context.UserEmailIdIf = $.context.UserEmailIf1;