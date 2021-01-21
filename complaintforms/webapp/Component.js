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
			var startupParameters = "";
			var taskModel = "";
			var taskId = "";
			try {
				startupParameters = this.getComponentData().startupParameters;
				taskModel = startupParameters.taskModel;
				taskId = taskModel.getData().InstanceID;
				var contextModel = new sap.ui.model.json.JSONModel("/bpmworkflowruntime/v1/task-instances/" + taskId + "/context");
				contextModel.setDefaultBindingMode(sap.ui.model.BindingMode.TwoWay);
				this.setModel(contextModel);
				var that = this;
				contextModel.attachRequestCompleted(function () {
                    var contextData = contextModel.getData();
					//Setting Local JSON Model with context values
					that.getModel("oLocalJsonModel").setProperty("/Arbitrated", this.getData().Arbitrated === "undefined" ? "" :
						this.getData().Arbitrated);
					that.getModel("oLocalJsonModel").setProperty("/CurrentStatus", this.getData().StatusUpdate.SettlementTrackingUpdate.ApprovalList
						.CurrentStatus ===
						"undefined" ? "" :
						this.getData().StatusUpdate.SettlementTrackingUpdate.ApprovalList.CurrentStatus);
					that.getModel("oLocalJsonModel").setProperty("/ApprovalLevel", this.getData().ApprovalLevel ===
						"undefined" ? "" :
						this.getData().ApprovalLevel);
					that.getModel("oLocalJsonModel").setProperty("/ApprovalList", this.getData().StatusUpdate.SettlementTrackingUpdate.ApprovalList ===
						"undefined" ? "" :
						this.getData().StatusUpdate.SettlementTrackingUpdate.ApprovalList);
					that.getModel("oLocalJsonModel").setProperty("/ComplaintDesc", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.Name === "undefined" ? "" :
						this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Name);
					that.getModel("oLocalJsonModel").setProperty("/ComplaintId", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.ID === "undefined" ? "" :
						this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ID);
					that.getModel("oLocalJsonModel").setProperty("/ComplaintDesc", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.Name === "undefined" ? "" :
						this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Name);
					that.getModel("oLocalJsonModel").setProperty("/Account", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
                        .PartyID === "undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.PartyID);
                        that.getModel("oLocalJsonModel").setProperty("/AccountName", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.AddressSnapshotDisplayName.AddressSnapshotDisplayName.FormattedName === "undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.AddressSnapshotDisplayName.AddressSnapshotDisplayName.FormattedName);
					that.getModel("oLocalJsonModel").setProperty("/ComplaintCategory", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.ServiceCategoryID ===
						"undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceCategoryID);
					that.getModel("oLocalJsonModel").setProperty("/ComplaintReason", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.ZComplaintReason_KUT === "undefined" ?
						"" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ZComplaintReason_KUT);
					that.getModel("oLocalJsonModel").setProperty("/TotalCost", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.Z_CostAllocationcontent_KUT === "undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostAllocationcontent_KUT
					);
					that.getModel("oLocalJsonModel").setProperty("/TotalCostCurrency", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.Z_CostAllocationcurrencyCode_KUT === "undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.Z_CostAllocationcurrencyCode_KUT
					);
					that.getModel("oLocalJsonModel").setProperty("/CostAllocation", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.ZCostAllocation_KUT === "undefined" ?
						"" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ZCostAllocation_KUT);
					that.getModel("oLocalJsonModel").setProperty("/ImmediateSettlement", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.Z_ImmediateSettlement_Header_KUT ===
						"undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT);
					that.getModel("oLocalJsonModel").setProperty("/CostSplit", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.Z_CostSplit_New_KUT === "undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostSplit_New_KUT
					);
					that.getModel("oLocalJsonModel").setProperty("/CustomerCountry", this.getData().Messages.Message2.ServiceRequestPartyCollection
						.ServiceRequestParty.CountryCode === "undefined" ?
						"" : this.getData().Messages.Message2.ServiceRequestPartyCollection.ServiceRequestParty.CountryCode);
					that.getModel("oLocalJsonModel").setProperty("/SettlementReference", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.Z_Settlementwithreference_KUT ===
						"undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_Settlementwithreference_KUT);
					that.getModel("oLocalJsonModel").setProperty("/Invoice_Ref_ID", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.RefInvoiceID_KUT === "undefined" ?
						"" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.RefInvoiceID_KUT);
					that.getModel("oLocalJsonModel").setProperty("/Delivery_Ref_ID", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.Z_RefDeliveryID_KUT === "undefined" ?
						"" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_RefDeliveryID_KUT);
					that.getModel("oLocalJsonModel").setProperty("/Other_Ref_Reason", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.Z_OtherReferenceReason_KUT === "undefined" ?
						"" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_OtherReferenceReason_KUT);
					that.getModel("oLocalJsonModel").setProperty("/ComplaintsStatus", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.ServiceRequestUserLifeCycleStatusCode === "undefined" ?
						"" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode);
					that.getModel("oLocalJsonModel").setProperty("/LineItem", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.ServiceRequestItem.ServiceRequestItem.ID ===
						"undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem
						.ID);
					that.getModel("oLocalJsonModel").setProperty("/Product", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.ServiceRequestItem.ServiceRequestItem.ProductID ===
						"undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem
						.ProductID);
					that.getModel("oLocalJsonModel").setProperty("/ProductDescription", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.ServiceRequestItem.ServiceRequestItem.Description ===
						"undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem
						.Description);
					that.getModel("oLocalJsonModel").setProperty("/SettlementMethod", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.ServiceRequestItem.ServiceRequestItem.UserServiceTransactionProcessingTypeCode ===
						"undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem
						.UserServiceTransactionProcessingTypeCode);
					that.getModel("oLocalJsonModel").setProperty("/Quantity", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.ServiceRequestItem.ServiceRequestItem.RequestedQuantity ===
						"undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem
						.RequestedQuantity);
					that.getModel("oLocalJsonModel").setProperty("/SettlementAmount", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.ServiceRequestItem.ServiceRequestItem.Z_SettlementAmountcontent_KUT ===
						"undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem
						.Z_SettlementAmountcontent_KUT);
					that.getModel("oLocalJsonModel").setProperty("/PrincipalPlant", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest
						.ServiceRequestItem.ServiceRequestItem.ZPlantCode_SDK ===
						"undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem
						.ZPlantCode_SDK);
					that.getModel("oLocalJsonModel").setProperty("/Comments", this.getData().Comments ===
                        "undefined" ? "" : this.getData().Comments);
                    that.getModel("oLocalJsonModel").setProperty("/CustomerBMIType", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.
                        Z_Case_BMIType1_KUT ===
                        "undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_Case_BMIType1_KUT);
                    that.getModel("oLocalJsonModel").setProperty("/CustomerBMIType2", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.
                        Z_Case_BMIType2_KUT ===
                        "undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_Case_BMIType2_KUT);
                    that.getModel("oLocalJsonModel").setProperty("/CreationDateTime", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.
                        CreationDateTime ===
						"undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.CreationDateTime);
                    that.getModel("oLocalJsonModel").setProperty("/ComplaintCreatedBy", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.
                        Createdby.Createdby.FormattedName ===
                        "undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Createdby.Createdby.FormattedName);
                    that.getModel("oLocalJsonModel").setProperty("/HighRisk", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.
                        HighRisk_KUT ===
                        "undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.HighRisk_KUT);
                    that.getModel("oLocalJsonModel").setProperty("/IsJustified", this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.
                        Z_Settlementwithreference_KUT ===
                        "undefined" ? "" : this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_Settlementwithreference_KUT);
                    
                    that.getModel("oLocalJsonModel").setProperty("/ContactID", this.getData().ContactID ===
                        "undefined" ? "" : this.getData().ContactID);
                    that.getModel("oLocalJsonModel").setProperty("/ContactName", this.getData().ContactName ===
                        "undefined" ? "" : this.getData().ContactName);

                        // Implementation for Approve button action
					var sBtnTxt = "Approve";
					var taskStatus = "ApprovedN";
					var oPositiveAction = {
						sBtnTxt: sBtnTxt,
						onBtnPressed: function (e) {
							var model = that.getModel();
							model.refresh(true);
							//Call a local method to perform further action
							that._triggerComplete(taskId, taskStatus,
								jQuery.proxy(
									//on successful competion, call a local method to refresh the task list in My Inbox
									that._refreshTask, that));
						}
					};

					//Add 'Approve' action to the task
					startupParameters.inboxAPI.addAction({
						action: oPositiveAction.sBtnTxt,
						label: oPositiveAction.sBtnTxt,
						type: "Accept"
							//Set the onClick function
					}, oPositiveAction.onBtnPressed);

					// Implementation for 'Reject/Arbitrate' button action
					var sBtnTxtResult = this.getData().ButtonText.Result[0].ButtonText.ButtonText;
					var sBtnTaskStatus;
					sBtnTaskStatus = "Rejected";
					if (sBtnTxtResult === "Arbitrate") {
						sBtnTaskStatus = "Arbitrate";
					}
					var oNegativeAction = {
						sBtnTxt: sBtnTxtResult,
						taskStatus: sBtnTaskStatus,
						onBtnPressed: function (e) {
							var model = that.getModel();
							model.refresh(true);
							//Call a local method to perform further action
							that._triggerComplete(taskId, sBtnTaskStatus,
								jQuery.proxy(
									//on successful competion, call a local method to refresh the task list in My Inbox
									that._refreshTask, that));
						}
					};
					//Add 'Reject/Arbitrate' action to the task
					startupParameters.inboxAPI.addAction({
						action: oNegativeAction.sBtnTxt,
						label: oNegativeAction.sBtnTxt,
						type: "Reject"
							//Set the onClick function
					}, oNegativeAction.onBtnPressed);
				});
			} catch (err) {
				return;
			}
		},
		/*END of change - Vellachi - 29.09.2020 */

		/**
		 * START of change :  SO006_W_FS_C4C_ Complaints workflow with SCP_I044 -- Vellachi 29.09.2020  
		 * This method is called when the user action is performed. It can be either Approve or Reject(Arbitrate)
		 */
		_triggerComplete: function (taskId, approvalStatus, refreshTask) {
			var setBusy = new sap.m.BusyDialog();
			setBusy.open();
			setBusy.setBusyIndicatorDelay(4000);
			//Validation of Mandatory field 'Comments'
			if (this.getModel("oLocalJsonModel").getProperty("/ComplaintApprovalReason") === undefined || this.getModel("oLocalJsonModel").getProperty(
					"/ComplaintApprovalReason") === "") {
				setBusy.close();
				sap.m.MessageBox.error("Enter comment");
				return;
			}
			var root = this.byId("ApproverScreen").getId();
			var CurrentStatus = this.getModel("oLocalJsonModel").getProperty("/CurrentStatus");
            var ApproverLevel = this.getModel("oLocalJsonModel").getProperty("/ApprovalLevel");
            
			var formData;
			var obj = {};
			formData = obj;
			var dLastUpdated = new Date();
			var ComplaintsStatus = this.getModel("oLocalJsonModel").getProperty("/ComplaintsStatus");
			if (approvalStatus === "ApprovedN") {
				var ApprovalList = this.getModel("oLocalJsonModel").getProperty("/ApprovalList");
                var ApproverTxt, FinalApproverVal;
                
//new changes
var index = ApproverLevel - 1;
ApprovalList[index].CurrentStatus = "Approved";
ApprovalList[index].LastUpdated = dLastUpdated;
this.getModel("oLocalJsonModel").setProperty("/ApprovalList", ApprovalList);
//end of changes


				var CostSplit = this.byId(root + "--" + "IdInpCostSplit").getValue();
                //var CostAllocation1 = this.byId(root + "--" + "IdInpCostAllocation").getProperty("value");
                var CostAllocation = this.byId(root + "--" + "IdInpCostAllocation").getProperty("selectedKey");
                var oComplaintsStatus = this.getModel("oLocalJsonModel").getProperty("/ComplaintsStatus");
				
                //Increasing the Approver level in case of 'Approved' user action
                
				var ApprovalLevel = ++ApproverLevel;
                var CurrentStatus = "Approved";
                var LastUpdated = dLastUpdated;

				formData = "{ \"status\":\"COMPLETED\",\"context\": {\"approvedorreject\": \"" + approvalStatus + "\",\"Comments\" : \"" + this.getModel(
						"oLocalJsonModel").getData().ComplaintApprovalReason + "\",\"Arbitrated\":\"" + "Approved" +
                    "\",\"ApprovalLevel\": \"" + ApprovalLevel +
                    "\",\"CurrentStatus\": \"" + CurrentStatus +
                    "\",\"LastUpdated\": \"" + LastUpdated +
                    "\",\"ApprovalLevel1\": \"" + index +
                    "\",\"StatusUpdate\":{\"Complaintsstatus\":\"" + oComplaintsStatus +
					"\",\"CostAllocation\":\"" + CostAllocation +
					"\",\"CostSplit\":\"" + CostSplit +
					"\"},\"Messages\":{\"Message1\":{\"ServiceRequestCollection\":{\"ServiceRequest\":{\"Z_CostSplit_New_KUT\":\"" +
					CostSplit + "\",\"ZCostAllocation_KUT\":\"" + CostAllocation + "\"}}}} }}";

			} else if (approvalStatus === "Arbitrate") {
                var index = ApproverLevel - 1;
				if (ApproverLevel === "1") {
					this.byId(root + "--" + "IdInpCostSplit").setEditable(true);
					this.byId(root + "--" + "IdInpCostAllocation").setEditable(true);
					this.byId(root + "--" + "IdInpComments").setEditable(true);
					setBusy.close();
					return;
				} else {
					
					// CurrentStatus = this.getModel("oLocalJsonModel").getProperty("/CurrentStatus");
					// var CurrentStatusNum = CurrentStatus.split(" ", 4)[3] - 1;
					// CurrentStatus = "Pending for level " + CurrentStatusNum + " approval";
					//Decreasing the Approver level in case of 'Arbitrate' user action
					ApprovalLevel = --ApproverLevel;

                    ApprovalList = this.getModel("oLocalJsonModel").getData().ApprovalList;
                    
                    //new changes

ApprovalList[index].CurrentStatus = "Arbitrate";
ApprovalList[index].LastUpdated = dLastUpdated;
dLastUpdated = new Date();


CurrentStatus = "Arbitrate";
this.getModel("oLocalJsonModel").setProperty("/ApprovalList", ApprovalList);
//end of changes


					if (ComplaintsStatus === "Z7") {
						ComplaintsStatus = "Y2";
					} else {
						ComplaintsStatus = "Y7";
					}
					formData = "{ \"status\":\"COMPLETED\",\"context\": {\"approvedorreject\": \"" + approvalStatus +
						"\",\"Comments\" : \"" + this.getModel("oLocalJsonModel").getData().ComplaintApprovalReason +
                        "\",\"Arbitrated\":\"" + "Arbitrate" +
                         "\",\"ApprovalLevel\": \"" + ApprovalLevel +
                    "\",\"CurrentStatus\": \"" + CurrentStatus +
                    "\",\"LastUpdated\": \"" + dLastUpdated +
                    "\",\"ApprovalLevel1\": \"" + index +
						"\",\"StatusUpdate\":{\"Complaintsstatus\": \"" + ComplaintsStatus +
						"\"}} }";
				}
			} else if (approvalStatus === "Rejected") {
			
				ApprovalLevel = ApproverLevel;
				CurrentStatus = "Rejected by Level " + ApprovalLevel;
				ApprovalList = this.getModel("oLocalJsonModel").getData().ApprovalList;
//new changes
var index = ApproverLevel - 1;
ApprovalList[index].CurrentStatus = "Rejected";
ApprovalList[index].LastUpdated = dLastUpdated;
this.getModel("oLocalJsonModel").setProperty("/ApprovalList", ApprovalList);
CurrentStatus = "Rejected";
dLastUpdated = new Date();
//end of changes
                
				formData = "{ \"status\":\"COMPLETED\",\"context\": {\"approvedorreject\": \"" + approvalStatus +
					"\",\"Comments\" : \"" + this.getModel("oLocalJsonModel").getData().ComplaintApprovalReason +
                    "\",\"Arbitrated\":\"" + "Rejected" + "\",\"ApprovalLevel\": \"" + ApprovalLevel +
                    "\",\"CurrentStatus\": \"" + CurrentStatus +
                    "\",\"LastUpdated\": \"" + dLastUpdated +
                    "\",\"ApprovalLevel1\": \"" + index +
					"\" }}";
			} else {
				return;
			}

			var sToken = this._fetchToken();
			$.ajax({
				//Call workflow API to complete the task
				url: "/bpmworkflowruntime/v1/task-instances/" + taskId,
				method: "PATCH",
				contentType: "application/json",
				//pass the updated context to the API
				data: formData,
				headers: {
					//pass the xsrf token retrieved earlier
					"X-CSRF-Token": sToken
				},
				//refreshTask needs to be called on successful completion
				success: refreshTask
			});
			this.byId(root + "--" + "IdInpComments").setEditable(false);
			this.byId(root + "--" + "IdInpCostSplit").setEditable(false);
			this.byId(root + "--" + "IdInpCostAllocation").setEditable(false);
			setBusy.close();
		},
		/*END of change - Vellachi - 29.09.2020 */

		/**
		 * START of change :  SO006_W_FS_C4C_ Complaints workflow with SCP_I044 -- Vellachi 29.09.2020  
		 * This method is called to refresh the masterlist control of My Inbox, once the task is completed
		 */
		_refreshTask: function () {
			var taskId = this.getComponentData().startupParameters.taskModel.getData().InstanceID;
			this.getComponentData().startupParameters.inboxAPI.updateTask("NA", taskId);
		},
		/*END of change - Vellachi - 29.09.2020 */

		/**
		 * START of change :  SO006_W_FS_C4C_ Complaints workflow with SCP_I044 -- Vellachi 29.09.2020  
		 * This method is called to fetch the token which is required for patching the modified details to the workflow API
		 */
		_fetchToken: function () {
				var token;
				$.ajax({
					url: "/bpmworkflowruntime/v1/xsrf-token",
					method: "GET",
					async: false,
					headers: {
						"X-CSRF-Token": "Fetch"
					},
					success: function (result, xhr, data) {
						token = data.getResponseHeader("X-CSRF-Token");
					},
					error: function (result, xhr, data) {
						this.onErrorCall();
					}.bind(this)
				});
				return token;
			}
			/*END of change - Vellachi - 29.09.2020 */

	});
});
