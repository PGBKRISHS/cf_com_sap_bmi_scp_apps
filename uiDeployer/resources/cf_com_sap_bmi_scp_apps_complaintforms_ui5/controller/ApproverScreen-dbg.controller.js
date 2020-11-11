sap.ui.define([
	"sap/ui/core/mvc/Controller"
], function (Controller) {
	"use strict";

	return Controller.extend("com.sap.bmi.scp.apps.complaintforms.controller.ApproverScreen", {
		onInit: function () {
		},
		onAfterRendering: function () {
			var oComponent = this.getOwnerComponent() || this.getView().getOwnerComponent();
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
				this.getView().byId("IdInpCostSplit").setEditable(true);
				this.getView().byId("IdInpCostAllocation").setEditable(true);
			} else {
				this.getView().byId("IdInpCostSplit").setEditable(false);
				this.getView().byId("IdInpCostAllocation").setEditable(false);
			}
		}
	});
});