var i = $.context.ApprovalLevel - 1 + 1;

// var currentUserName1 = $.context.ApproverIdRes.Result[0].ApproverIdRes[i].ApproverId;

// var UserEmailIf1 = {
// 		"UserName": currentUserName1
// 	};

var currentUserName1 = $.context.approver_result[i].ApproverId;

//  var UserEmailIf1 = {
//         "UserEmailIdIf": currentUserName1
//     };
// $.context.UserEmailIdIf1 = UserEmailIf1;

var userstab = [];
    userstab.push(currentUserName1);
    $.context.UserEmailIf1 = {
        "UserEmailIdIf": userstab
    };