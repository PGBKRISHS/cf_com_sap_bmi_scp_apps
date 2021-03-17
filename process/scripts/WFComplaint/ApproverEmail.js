
var i = $.context.ApprovalLevel1 - 1 + 1;
// var currentUserName = $.context.CurrentUser;

// var UserEmailIf = {
// 		"UserName": currentUserName
// 	};

<<<<<<< HEAD
=======

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;
>>>>>>> 24b885e4da23c126b0ebedc6a9b00f9331bcdb09

// $.context.UserEmailIdIf = UserEmailIf;
$.context.CurrentUser = $.context.approver_result[i].ApproverId;
var currentusername = $.context.CurrentUser;
//  $.context.UserEmailIf1 = {
//         "UserEmailIdIf": userstab
//     };

<<<<<<< HEAD

var userstab = [];
    userstab.push(currentusername);
    $.context.UserEmailIf1 = {
        "UserEmailIdIf": userstab
    };
$.context.UserEmailIdIf = $.context.UserEmailIf1;
=======
// write 'product' node to workflow context
$.context.product = product;
*/
$.context.taskProcessor = $.usertasks.usertask1.last.recipientUsers;
var currentUserName = $.context.CurrentUser;

var UserEmailIf = {
		"UserName": currentUserName
	};


$.context.UserEmailIdIf = UserEmailIf;
>>>>>>> 24b885e4da23c126b0ebedc6a9b00f9331bcdb09
