sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "com/sap/bmi/scp/apps/complaintforms/model/formatter",
    'sap/m/library'
], function (Controller,formatter,mobileLibrary) {
	"use strict";
var URLHelper = mobileLibrary.URLHelper;
	return Controller.extend("com.sap.bmi.scp.apps.complaintforms.controller.ApproverScreen", {
        formatter:formatter,
		onInit: function () {
            
		},
		onAfterRendering: function () {
			var oComponent = this.getOwnerComponent();
			oComponent.getModel("oLocalJsonModel");
            var PrevComment = oComponent.getModel("oLocalJsonModel").getProperty("/Comments");
			if (!(PrevComment)) {
				this.getView().byId("IdLblPrevComments").setVisible(false);
				this.getView().byId("IdTxtPrevComments").setVisible(false);
			
			} else if (PrevComment !== "") {
				this.getView().byId("IdLblPrevComments").setVisible(true);
				this.getView().byId("IdTxtPrevComments").setVisible(true);
				this.getView().byId("IdTxtPrevComments").setText(PrevComment);
			}else{
				return;
			}
			var Arbitrated = oComponent.getModel("oLocalJsonModel").getProperty("/Arbitrated");
			if (Arbitrated === "Arbitrate") {
				//this.getView().byId("IdInpCostSplit").setEditable(true);
				this.getView().byId("IdInpCostAllocation").setEditable(true);
			} else {
				//this.getView().byId("IdInpCostSplit").setEditable(false);
				this.getView().byId("IdInpCostAllocation").setEditable(false);
			}
        },
        // 	_getVal: function(evt) {
		// 	return evt.getSource().getValue("https://my353210.crm.ondemand.com/sap/ap/ui/clogin?bo_ns=http://sap.com/thingTypes&bo=COD_GENERIC&node=Root&operation=OnExtInspect&param.InternalID=1389&param.Type=COD_SRQ_AGENT_TT&sapbyd-agent=TAB&saml2=disabled&OBNRedirect=X");
		// },
        onPress: function()
        {
            // URLHelper.redirect(this._getVal(evt), true);
            var sURL = "https://my353210.crm.ondemand.com/sap/ap/ui/clogin?bo_ns=http://sap.com/thingTypes&bo=COD_GENERIC&node=Root&operation=OnExtInspect&param.InternalID=" + this.getOwnerComponent().getModel("oLocalJsonModel").getProperty("/ComplaintId") + "&param.Type=COD_SRQ_AGENT_TT&sapbyd-agent=TAB&saml2=disabled&OBNRedirect=X";
            window.open(sURL,"_blank");
        }
	});
});
