jQuery.sap.require("sap.ui.core.format.DateFormat");
sap.ui.define([], function () {
    "use strict";
    return {
sumSettlementAmount:function(mValue){ 
 var oNumLineItems =  mValue.length;
 var sSumSettlementAmount = 0;
 for(var i=0; i<oNumLineItems; i++){
     sSumSettlementAmount += parseFloat(mValue[i].Z_SettlementAmountcontent_KUT)
 }
return sSumSettlementAmount.toFixed(2);
},
formatDate:function(oField){
    var oDateFormat = sap.ui.core.format.DateFormat.getDateTimeInstance({pattern: "dd/MM/yyyy HH:mm"});
    var newdate = new Date(oField);
    var oDate = oDateFormat.format(newdate);
    return oDate;
}

            };

});