/*global QUnit*/

sap.ui.define([
	"com/sap/bmi/scp/apps/complaintforms/controller/ApproverScreen.controller"
], function (Controller) {
	"use strict";

	QUnit.module("ApproverScreen Controller");

	QUnit.test("I should test the ApproverScreen controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});