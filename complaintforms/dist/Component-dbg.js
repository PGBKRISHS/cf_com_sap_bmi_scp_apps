sap.ui.define([
	"sap/ui/core/UIComponent",
	"sap/ui/Device",
	"com/sap/bmi/scp/apps/complaintforms/model/models"
], function (UIComponent, Device, models) {
	"use strict";

	return UIComponent.extend("com.sap.bmi.scp.apps.complaintforms.Component", {

		metadata: {
			manifest: "json"
		},
		/**
		 * START of change :  SO006_W_FS_C4C_ Complaints workflow with SCP_I044 -- Vellachi 29.09.2020  
		 * The component is initialized by UI5 automatically during the startup of the app and calls the init method once.
		 * @public
		 * @override
		 */
		init: function () {
			// call the base component's init function
			UIComponent.prototype.init.apply(this, arguments);
			this.getRouter().initialize();
			this.setModel(models.createDeviceModel(), "device");
		}
		/*END of change - Vellachi - 29.09.2020 */

	});
});