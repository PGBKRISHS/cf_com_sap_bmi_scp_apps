/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"com/sap/bmi/scp/apps/complaintforms/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});