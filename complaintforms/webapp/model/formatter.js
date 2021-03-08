jQuery.sap.require("sap.ui.core.format.DateFormat");
sap.ui.define([], function () {
	"use strict";
	return {
sumSettlementAmount:function(mValue){ 
    if(mValue != undefined)
    {   
 var oNumLineItems =  mValue;
 var sSumSettlementAmount = 0;
 for(var i=0; i<oNumLineItems.length; i++){
     sSumSettlementAmount += parseFloat(mValue[i].Z_SettlementAmountcontent_KUT)
 }
sSumSettlementAmount= sSumSettlementAmount.toFixed(2);
return sSumSettlementAmount.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
 }
},
// numberWithCommas: function (x) {
    
// },
formatDate:function(oField){
    var oDateFormat = sap.ui.core.format.DateFormat.getDateTimeInstance({pattern: "dd.MM.yyyy HH:mm"});
    var newdate = new Date(oField);
    var oDate = oDateFormat.format(newdate);
    return oDate;
},
formatCheckBox: function (value) {
			
			if (value === "true") {

				return "Yes";
			} else {
				return "No";
			}

		},

        	};

});

