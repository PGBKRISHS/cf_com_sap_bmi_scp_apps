
var i = $.context.ApprovalLevel1 - 1 + 1;
// var currentUserName = $.context.CurrentUser;

// var UserEmailIf = {
// 		"UserName": currentUserName
// 	};


// $.context.UserEmailIdIf = UserEmailIf;
$.context.CurrentUser = $.context.approver_result[i].ApproverId;
var currentusername = $.context.CurrentUser;
//  $.context.UserEmailIf1 = {
//         "UserEmailIdIf": userstab
//     };

$.context.UserEmailIdIf = $.context.UserEmailIf1;
var userstab = [];
    userstab.push(currentusername);
    $.context.UserEmailIf1 = {
        "UserEmailIdIf": userstab
    };