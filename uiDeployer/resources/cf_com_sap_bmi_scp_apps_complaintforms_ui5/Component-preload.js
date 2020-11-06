//@ui5-bundle com/sap/bmi/scp/apps/complaintforms/Component-preload.js
jQuery.sap.registerPreloadedModules({
"version":"2.0",
"modules":{
	"com/sap/bmi/scp/apps/complaintforms/Component.js":function(){sap.ui.define(["sap/ui/core/UIComponent","sap/ui/Device","com/sap/bmi/scp/apps/complaintforms/model/models"],function(e,t,s){"use strict";return e.extend("com.sap.bmi.scp.apps.complaintforms.Component",{metadata:{manifest:"json"},init:function(){e.prototype.init.apply(this,arguments);this.getRouter().initialize();this.setModel(s.createDeviceModel(),"device");var t="";var o="";var a="";try{t=this.getComponentData().startupParameters;o=t.taskModel;a=o.getData().InstanceID;var i=new sap.ui.model.json.JSONModel("/comsapbmiscpappscomplaintforms/bpmworkflowruntime/rest/v1/task-instances/"+a+"/context");i.setDefaultBindingMode(sap.ui.model.BindingMode.TwoWay);this.setModel(i);var l=this;i.attachRequestCompleted(function(){l.getModel("oLocalJsonModel").setProperty("/Arbitrated",this.getData().Arbitrated==="undefined"?"":this.getData().Arbitrated);l.getModel("oLocalJsonModel").setProperty("/CurrentStatus",this.getData().StatusUpdate.SettlementTrackingUpdate.ApprovalList.CurrentStatus==="undefined"?"":this.getData().StatusUpdate.SettlementTrackingUpdate.ApprovalList.CurrentStatus);l.getModel("oLocalJsonModel").setProperty("/ApprovalLevel",this.getData().ApprovalLevel==="undefined"?"":this.getData().ApprovalLevel);l.getModel("oLocalJsonModel").setProperty("/ApprovalList",this.getData().StatusUpdate.SettlementTrackingUpdate.ApprovalList==="undefined"?"":this.getData().StatusUpdate.SettlementTrackingUpdate.ApprovalList);l.getModel("oLocalJsonModel").setProperty("/ComplaintDesc",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Name==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Name);l.getModel("oLocalJsonModel").setProperty("/ComplaintId",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ObjectID==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ObjectID);l.getModel("oLocalJsonModel").setProperty("/ComplaintDesc",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Name==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Name);l.getModel("oLocalJsonModel").setProperty("/Account",this.getData().Messages.Message2.ServiceRequestPartyCollection.ServiceRequestParty.ObjectID==="undefined"?"":this.getData().Messages.Message2.ServiceRequestPartyCollection.ServiceRequestParty.ObjectID);l.getModel("oLocalJsonModel").setProperty("/ComplaintCategory",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceCategoryID==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceCategoryID);l.getModel("oLocalJsonModel").setProperty("/ComplaintReason",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ZComplaintReason_KUT==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ZComplaintReason_KUT);l.getModel("oLocalJsonModel").setProperty("/TotalCost",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostAllocationcontent_KUT==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostAllocationcontent_KUT);l.getModel("oLocalJsonModel").setProperty("/TotalCostCurrency",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostAllocationcurrencyCode_KUT==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostAllocationcurrencyCode_KUT);l.getModel("oLocalJsonModel").setProperty("/CostAllocation",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ZCostAllocation_KUT==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ZCostAllocation_KUT);l.getModel("oLocalJsonModel").setProperty("/ImmediateSettlement",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_ImmediateSettlement_Header_KUT);l.getModel("oLocalJsonModel").setProperty("/CostSplit",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostSplit_New_KUT==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_CostSplit_New_KUT);l.getModel("oLocalJsonModel").setProperty("/CustomerCountry",this.getData().Messages.Message2.ServiceRequestPartyCollection.ServiceRequestParty.CountryCode==="undefined"?"":this.getData().Messages.Message2.ServiceRequestPartyCollection.ServiceRequestParty.CountryCode);l.getModel("oLocalJsonModel").setProperty("/SettlementReference",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_Settlementwithreference_KUT==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_Settlementwithreference_KUT);l.getModel("oLocalJsonModel").setProperty("/Invoice_Ref_ID",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.RefInvoiceID_KUT==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.RefInvoiceID_KUT);l.getModel("oLocalJsonModel").setProperty("/Delivery_Ref_ID",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_RefDeliveryID_KUT==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_RefDeliveryID_KUT);l.getModel("oLocalJsonModel").setProperty("/Other_Ref_Reason",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_OtherReferenceReason_KUT==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.Z_OtherReferenceReason_KUT);l.getModel("oLocalJsonModel").setProperty("/ComplaintsStatus",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestUserLifeCycleStatusCode);l.getModel("oLocalJsonModel").setProperty("/LineItem",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.ID==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.ID);l.getModel("oLocalJsonModel").setProperty("/Product",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.ProductID==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.ProductID);l.getModel("oLocalJsonModel").setProperty("/ProductDescription",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.Description==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.Description);l.getModel("oLocalJsonModel").setProperty("/SettlementMethod",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.UserServiceTransactionProcessingTypeCode==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.UserServiceTransactionProcessingTypeCode);l.getModel("oLocalJsonModel").setProperty("/Quantity",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.RequestedQuantity==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.RequestedQuantity);l.getModel("oLocalJsonModel").setProperty("/SettlementAmount",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.Z_SettlementAmountcontent_KUT==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.Z_SettlementAmountcontent_KUT);l.getModel("oLocalJsonModel").setProperty("/PrincipalPlant",this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.ZPlantCode_SDK==="undefined"?"":this.getData().Messages.Message1.ServiceRequestCollection.ServiceRequest.ServiceRequestItem.ServiceRequestItem.ZPlantCode_SDK);l.getModel("oLocalJsonModel").setProperty("/Comments",this.getData().Comments==="undefined"?"":this.getData().Comments);var e="Approve";var s="ApprovedN";var o={sBtnTxt:e,onBtnPressed:function(e){var t=l.getModel();t.refresh(true);l._triggerComplete(a,s,jQuery.proxy(l._refreshTask,l))}};t.inboxAPI.addAction({action:o.sBtnTxt,label:o.sBtnTxt,type:"Accept"},o.onBtnPressed);var i=this.getData().ButtonText.Result[0].ButtonText.ButtonText;var r;r="Rejected";if(i==="Arbitrate"){r="Arbitrate"}var n={sBtnTxt:i,taskStatus:r,onBtnPressed:function(e){var t=l.getModel();t.refresh(true);l._triggerComplete(a,r,jQuery.proxy(l._refreshTask,l))}};t.inboxAPI.addAction({action:n.sBtnTxt,label:n.sBtnTxt,type:"Reject"},n.onBtnPressed)})}catch(e){return}},_triggerComplete:function(e,t,s){var o=new sap.m.BusyDialog;o.open();o.setBusyIndicatorDelay(4e3);if(this.getModel("oLocalJsonModel").getProperty("/ComplaintApprovalReason")===undefined||this.getModel("oLocalJsonModel").getProperty("/ComplaintApprovalReason")===""){o.close();sap.m.MessageBox.error("Enter comment");return}var a=this.byId("ApproverScreen").getId();var i=this.getModel("oLocalJsonModel").getProperty("/CurrentStatus");var l=this.getModel("oLocalJsonModel").getProperty("/ApprovalLevel");var r;var n={};r=n;var c=new Date;var d=this.getModel("oLocalJsonModel").getProperty("/ComplaintsStatus");if(t==="ApprovedN"){var v=this.getModel("oLocalJsonModel").getProperty("/ApprovalList");var g,u;if(l==="1"){g=v.Level1.split("(")[0];u=g+"(Approved)";v.Level1=u;i="Pending for level 2 approval"}else if(l==="2"){g=v.Level2.split("(")[0];u=g+"(Approved)";v.Level2=u;i="Pending for level 3 approval"}else if(l==="3"){g=v.Level3.split("(")[0];u=g+"(Approved)";v.Level3=u;i="Pending for level 4 approval"}else{g=v.Level4.split("(")[0];u=g+"(Approved)";v.Level4=u;i=""}this.getModel("oLocalJsonModel").setProperty("/ApprovalList",v);var p,M,S,R;if(!this.getModel("oLocalJsonModel").getData().ApprovalList.Level1){p=""}else{p=this.getModel("oLocalJsonModel").getData().ApprovalList.Level1}if(!this.getModel("oLocalJsonModel").getData().ApprovalList.Level2){M=""}else{M=this.getModel("oLocalJsonModel").getData().ApprovalList.Level2}if(!this.getModel("oLocalJsonModel").getData().ApprovalList.Level3){S=""}else{S=this.getModel("oLocalJsonModel").getData().ApprovalList.Level3}if(!this.getModel("oLocalJsonModel").getData().ApprovalList.Level4){R=""}else{R=this.getModel("oLocalJsonModel").getData().ApprovalList.Level4}var m=this.byId(a+"--"+"IdInpCostSplit").getValue();var C=this.byId(a+"--"+"IdInpCostAllocation").getValue();var L=this.getModel("oLocalJsonModel").getProperty("/ComplaintsStatus");var q=++l;r='{ "status":"COMPLETED","context": {"approvedorreject": "'+t+'","Comments" : "'+this.getModel("oLocalJsonModel").getData().ComplaintApprovalReason+'","Arbitrated":"'+"Approved"+'","ApprovalLevel": "'+q+'","StatusUpdate":{"Complaintsstatus":"'+L+'","CostAllocation":"'+C+'","CostSplit":"'+m+'","SettlementTrackingUpdate":{\t"ApprovalList" : {"Level1":"'+p+'" ,"Level2":"'+M+'","Level3":"'+S+'","Level4":"'+R+'","LastUpdated":"'+c+'",\t"CurrentStatus":"'+i+'"}}},"Messages":{"Message1":{"ServiceRequestCollection":{"ServiceRequest":{"Z_CostSplit_New_KUT":"'+m+'","ZCostAllocation_KUT":"'+C+'"}}}} }}'}else if(t==="Arbitrate"){if(l==="1"){this.byId(a+"--"+"IdInpCostSplit").setEditable(true);this.byId(a+"--"+"IdInpCostAllocation").setEditable(true);this.byId(a+"--"+"IdInpComments").setEditable(true);o.close();return}else{i=this.getModel("oLocalJsonModel").getProperty("/CurrentStatus");var h=i.split(" ",4)[3]-1;i="Pending for level "+h+" approval";q=--l;v=this.getModel("oLocalJsonModel").getData().ApprovalList;if(l===1){g=v.Level1.split("(")[0];u=g+"(Arbitrate)";v.Level1=u}else if(l===2){g=v.Level2.split("(")[0];u=g+"(Arbitrate)";v.Level2=u}else if(l===3){g=v.Level3.split("(")[0];u=g+"(Arbitrate)";v.Level3=u}else if(l===4){g=v.Level4.split("(")[0];u=g+"(Arbitrate)";v.Level4=u}else{return}if(d==="Z7"){d="Y2"}else{d="Y7"}r='{ "status":"COMPLETED","context": {"approvedorreject": "'+t+'","Comments" : "'+this.getModel("oLocalJsonModel").getData().ComplaintApprovalReason+'","Arbitrated":"'+"Arbitrate"+'","ApprovalLevel": "'+q+'","StatusUpdate":{"SettlementTrackingUpdate":{"ApprovalList" : {"Level1":"'+v.Level1+'" ,"Level2":"'+v.Level2+'","Level3":"'+v.Level3+'","Level4":"'+v.Level4+'","LastUpdated":"'+c+'"}},"Complaintsstatus": "'+d+'"}} }'}}else if(t==="Rejected"){q=l;i="Rejected by Level "+q;v=this.getModel("oLocalJsonModel").getData().ApprovalList;if(l==="1"){g=v.Level1.split("(")[0];u=g+"(Rejected)";v.Level1=u}else if(l==="2"){g=v.Level2.split("(")[0];u=g+"(Rejected)";v.Level2=u}else if(l==="3"){g=v.Level3.split("(")[0];u=g+"(Rejected)";v.Level3=u}else if(l==="4"){g=v.Level4.split("(")[0];u=g+"(Rejected)";v.Level4=u}else{return}r='{ "status":"COMPLETED","context": {"approvedorreject": "'+t+'","Comments" : "'+this.getModel("oLocalJsonModel").getData().ComplaintApprovalReason+'","Arbitrated":"'+"Rejected"+'","ApprovalLevel": "'+q+'","StatusUpdate":{"SettlementTrackingUpdate":{"ApprovalList" : {"Level1":"'+v.Level1+'" ,"Level2":"'+v.Level2+'","Level3":"'+v.Level3+'","Level4":"'+v.Level4+'","LastUpdated":"'+c+'",\t"CurrentStatus":"'+i+'"}}} }}'}else{return}var D=this._fetchToken();$.ajax({url:"/comsapbmiscpappscomplaintforms/bpmworkflowruntime/rest/v1/task-instances/"+e,method:"PATCH",contentType:"application/json",data:r,headers:{"X-CSRF-Token":D},success:s});this.byId(a+"--"+"IdInpComments").setEditable(false);this.byId(a+"--"+"IdInpCostSplit").setEditable(false);this.byId(a+"--"+"IdInpCostAllocation").setEditable(false);o.close()},_refreshTask:function(){var e=this.getComponentData().startupParameters.taskModel.getData().InstanceID;this.getComponentData().startupParameters.inboxAPI.updateTask("NA",e)},_fetchToken:function(){var e;$.ajax({url:"/comsapbmiscpappscomplaintforms/bpmworkflowruntime/rest/v1/xsrf-token",method:"GET",async:false,headers:{"X-CSRF-Token":"Fetch"},success:function(t,s,o){e=o.getResponseHeader("X-CSRF-Token")},error:function(e,t,s){this.onErrorCall()}.bind(this)});return e}})});
},
	"com/sap/bmi/scp/apps/complaintforms/controller/ApproverScreen.controller.js":function(){sap.ui.define(["sap/ui/core/mvc/Controller"],function(e){"use strict";return e.extend("com.sap.bmi.scp.apps.complaintforms.controller.ApproverScreen",{onInit:function(){},onAfterRendering:function(){var e=this.getOwnerComponent();e.getModel("oLocalJsonModel");var t=e.getModel("oLocalJsonModel").getProperty("/Comments");if(!t){this.getView().byId("IdLblPrevComments").setVisible(false);this.getView().byId("IdTxtPrevComments").setVisible(false)}else if(t!==""){this.getView().byId("IdLblPrevComments").setVisible(true);this.getView().byId("IdTxtPrevComments").setVisible(true);this.getView().byId("IdTxtPrevComments").setText(t)}else{return}var i=e.getModel("oLocalJsonModel").getProperty("/Arbitrated");if(i==="Arbitrate"){this.getView().byId("IdInpCostSplit").setEditable(true);this.getView().byId("IdInpCostAllocation").setEditable(true)}else{this.getView().byId("IdInpCostSplit").setEditable(false);this.getView().byId("IdInpCostAllocation").setEditable(false)}}})});
},
	"com/sap/bmi/scp/apps/complaintforms/i18n/i18n.properties":'title=Approver Screen\nappTitle=zui5complaintapprover1\nappDescription=App Description\nComplaint_ID = Complaint ID\nComplaint_Description = Complaint Description\nAccount = Account\nComplaint_Category = Complaint Category\nComplaint_Reason = Complaint Reason\nTotal_Cost = Total Cost\nCost_Allocation = Cost Allocation\nImmediate_Settlement = Immediate Settlement\nCost_Split = Cost Split\nCustomer_Country = Customer Country\nSettlement_reference = Settlement Reference\nInvoice_Ref_ID = Invoice Reference ID\nDelivery_Ref_ID = Delivery Reference ID\nOther_Ref_Reason = Other Reference Reason\nComplaints_status = Complaints Status\nLine_item = Line Item\nProduct = Product\nProduct_Description = Product Description\nSettlement_Method = Settlement Method\nQuantity = Quantity\nSettlement_Amount = Settlement Amount\nComplaint_App_Reason = Complaint Approval Reason or Complaint Reject Reasons\nPrincipal_Plant = Principal Plant\nComments = Comment By Previous Approver',
	"com/sap/bmi/scp/apps/complaintforms/manifest.json":'{"_version":"1.12.0","sap.app":{"id":"com.sap.bmi.scp.apps.complaintforms","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"1.0.0"},"title":"{{appTitle}}","description":"{{appDescription}}","sourceTemplate":{"id":"html5moduletemplates.basicSAPUI5ApplicationProjectModule","version":"1.40.12"}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":false,"rootView":{"viewName":"com.sap.bmi.scp.apps.complaintforms.view.ApproverScreen","type":"XML","async":true,"id":"ApproverScreen"},"dependencies":{"minUI5Version":"1.65.6","libs":{"sap.ui.core":{},"sap.m":{},"sap.ui.layout":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"com.sap.bmi.scp.apps.complaintforms.i18n.i18n"}}},"resources":{"css":[{"uri":"css/style.css"}]},"routing":{"config":{"routerClass":"sap.m.routing.Router","viewType":"XML","async":true,"viewPath":"com.sap.bmi.scp.apps.complaintforms.view","controlAggregation":"pages","controlId":"app","clearControlAggregation":false},"routes":[{"name":"RouteApproverScreen","pattern":"RouteApproverScreen","target":["TargetApproverScreen"]}],"targets":{"TargetApproverScreen":{"viewType":"XML","transition":"slide","clearControlAggregation":false,"viewId":"ApproverScreen","viewName":"ApproverScreen"}}}}}',
	"com/sap/bmi/scp/apps/complaintforms/model/models.js":function(){sap.ui.define(["sap/ui/model/json/JSONModel","sap/ui/Device"],function(e,n){"use strict";return{createDeviceModel:function(){var i=new e(n);i.setDefaultBindingMode("OneWay");return i}}});
},
	"com/sap/bmi/scp/apps/complaintforms/view/ApproverScreen.view.xml":'<mvc:View xmlns:mvc="sap.ui.core.mvc" xmlns="sap.m"\n\tcontrollerName="com.sap.bmi.scp.apps.complaintforms.controller.ApproverScreen" displayBlock="true" xmlns:l="sap.ui.layout"\n\txmlns:core="sap.ui.core" xmlns:m="sap.m" height="100%" xmlns:u="sap.uxap"><u:ObjectPageLayout id="ObjectPageLayout" showTitleInHeaderContent="true"><u:headerTitle><u:ObjectPageDynamicHeaderTitle><u:expandedHeading><m:HBox><m:Title text="{/Messages/Message1/ServiceRequestCollection/ServiceRequest/ObjectID}" wrapping="true"\n\t\t\t\t\t\t\tclass="sapUiTinyMarginEnd sapUiTinyMarginBottom"/><m:Title text="{/Messages/Message1/ServiceRequestCollection/ServiceRequest/Name}" wrapping="true"\n\t\t\t\t\t\t\tclass="sapUiTinyMarginEnd sapUiTinyMarginBottom"/></m:HBox></u:expandedHeading></u:ObjectPageDynamicHeaderTitle></u:headerTitle><u:headerContent><m:FlexBox wrap="Wrap" fitContainer="true"><m:VBox class="sapUiLargeMarginEnd sapUiSmallMarginBottom"><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Account}:" class="sapUiTinyMarginEnd"/><m:Text text="{/Messages/Message2/ServiceRequestPartyCollection/ServiceRequestParty/ObjectID}"/></m:HBox><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Complaint_Category}:" class="sapUiTinyMarginEnd"/><m:Text text="{/Messages/Message1/ServiceRequestCollection/ServiceRequest/ServiceCategoryID}"/></m:HBox><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Complaint_Reason}:" class="sapUiTinyMarginEnd"/><m:Text text="{/Messages/Message1/ServiceRequestCollection/ServiceRequest/ZComplaintReason_KUT}"/></m:HBox><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Total_Cost}:" class="sapUiTinyMarginEnd" /><m:Text text="{/Messages/Message1/ServiceRequestCollection/ServiceRequest/Z_CostAllocationcontent_KUT}" class="sapUiTinyMarginEnd"/><m:Text text="{/Messages/Message1/ServiceRequestCollection/ServiceRequest/Z_CostAllocationcurrencyCode_KUT}"/></m:HBox><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Cost_Allocation}:" class="sapUiTinyMarginEnd"/><m:Input id="IdInpCostAllocation" value="{path:\'/Messages/Message1/ServiceRequestCollection/ServiceRequest/ZCostAllocation_KUT\'}"\n\t\t\t\t\t\t\teditable="false"/></m:HBox></m:VBox><m:VBox class="sapUiLargeMarginEnd sapUiSmallMarginBottom"><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Immediate_Settlement}:" class="sapUiTinyMarginEnd"/><m:Text text="{/Messages/Message1/ServiceRequestCollection/ServiceRequest/Z_ImmediateSettlement_Header_KUT}"/></m:HBox><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Cost_Split}:" class="sapUiTinyMarginEnd"/><m:Input id="IdInpCostSplit" value="{path:\'/Messages/Message1/ServiceRequestCollection/ServiceRequest/Z_CostSplit_New_KUT\'}"\n\t\t\t\t\t\t\teditable="false"/></m:HBox><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Customer_Country}:" class="sapUiTinyMarginEnd"/><m:Text text="{/Messages/Message2/ServiceRequestPartyCollection/ServiceRequestParty/CountryCode}"/></m:HBox><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Settlement_reference}:" class="sapUiTinyMarginEnd"/><m:Text text="{/Messages/Message1/ServiceRequestCollection/ServiceRequest/Z_Settlementwithreference_KUT}"/></m:HBox><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Invoice_Ref_ID}:" class="sapUiTinyMarginEnd"/><m:Text text="{/Messages/Message1/ServiceRequestCollection/ServiceRequest/RefInvoiceID_KUT}"/></m:HBox></m:VBox><m:VBox class="sapUiSmallMarginBottom"><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Delivery_Ref_ID}:" class="sapUiTinyMarginEnd"/><m:Text text="{/Messages/Message1/ServiceRequestCollection/ServiceRequest/Z_RefDeliveryID_KUT}"/></m:HBox><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Other_Ref_Reason}:" class="sapUiTinyMarginEnd"/><m:Text text="{/Messages/Message1/ServiceRequestCollection/ServiceRequest/Z_OtherReferenceReason_KUT}"/></m:HBox><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Complaints_status}:" class="sapUiTinyMarginEnd"/><m:Text text="{/Messages/Message1/ServiceRequestCollection/ServiceRequest/ServiceRequestUserLifeCycleStatusCode}"/></m:HBox><m:HBox class="sapUiTinyMarginBottom"><m:Label text="{i18n>Line_item}:" class="sapUiTinyMarginEnd"/><m:Text text="{/Messages/Message1/ServiceRequestCollection/ServiceRequest/ServiceRequestItem/ServiceRequestItem/ID}"/></m:HBox></m:VBox></m:FlexBox></u:headerContent><u:sections><u:ObjectPageSection titleUppercase="false" title="Items"><u:subSections><u:ObjectPageSubSection titleUppercase="false"><u:blocks><m:VBox><m:Table id="idProductsTable" inset="false" items="{path:\'/Messages/Message1/ServiceRequestCollection/ServiceRequest/ServiceRequestItem\'}"><columns><Column hAlign="Center" minScreenWidth="Tablet" demandPopin="true"><Text text="Product"/></Column><Column hAlign="Center" minScreenWidth="Tablet" demandPopin="true"><Text text="Product Description"/></Column><Column minScreenWidth="Tablet" demandPopin="true" hAlign="Center"><Text text="Settlement Method"/></Column><Column minScreenWidth="Tablet" demandPopin="true" hAlign="Center" width="12em"><Text text="Quantity"/></Column><Column hAlign="Center" minScreenWidth="Tablet" demandPopin="true"><Text text="Settlement Amount"/></Column><Column hAlign="Center" minScreenWidth="Tablet" demandPopin="true"><Text text="Principal Plant"/></Column></columns><items><ColumnListItem><cells><Text text="{ProductID}"/><Text text="{Description}"/><Text text="{UserServiceTransactionProcessingTypeCode}"/><HBox alignItems="Center" justifyContent="SpaceAround"><Text text="{RequestedQuantity}"/><Text text="{QuantityMeasureUnitCode}"/></HBox><Text text="{Z_SettlementAmountcontent_KUT}"/><Text text="{ZPlantCode_SDK}"/></cells></ColumnListItem></items></m:Table><sap.ui.layout.form:SimpleForm xmlns:sap.ui.layout.form="sap.ui.layout.form" xmlns:sap.ui.core="sap.ui.core" editable="true"\n\t\t\t\t\t\t\t\t\tmaxContainerCols="2" layout="ResponsiveGridLayout" id="form0" labelSpanXL="4" labelSpanL="4" labelSpanM="6" labelSpanS="12"\n\t\t\t\t\t\t\t\t\tadjustLabelSpan="true" emptySpanXL="0" emptySpanL="1" emptySpanM="0" emptySpanS="0" columnsXL="2" columnsL="2" columnsM="2"\n\t\t\t\t\t\t\t\t\tsingleContainerFullSize="false"><sap.ui.layout.form:content><Label text="{i18n>Comments}" visible="false" id="IdLblPrevComments"/><Text text="{/Comments}" visible="false" id="IdTxtPrevComments"/><Label text="{i18n>Complaint_App_Reason}" id="lb1" required="true"/><Input xmlns="sap.m" id="IdInpComments" value="{oLocalJsonModel>/ComplaintApprovalReason}"/></sap.ui.layout.form:content></sap.ui.layout.form:SimpleForm></m:VBox></u:blocks></u:ObjectPageSubSection></u:subSections></u:ObjectPageSection></u:sections></u:ObjectPageLayout></mvc:View>'
}});
