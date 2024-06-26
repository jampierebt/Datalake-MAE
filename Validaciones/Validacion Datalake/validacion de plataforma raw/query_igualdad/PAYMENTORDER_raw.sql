SELECT SUM(CASE WHEN PROD.PAYMENTORDERID!=UAT.PAYMENTORDERID THEN 1 ELSE 0 END) AS DIFF_PAYMENTORDERID
,SUM(CASE WHEN PROD.DATEPAYMENTORDER!=UAT.DATEPAYMENTORDER THEN 1 ELSE 0 END) AS DIFF_DATEPAYMENTORDER
,SUM(CASE WHEN PROD.COMMITMENTDATE!=UAT.COMMITMENTDATE THEN 1 ELSE 0 END) AS DIFF_COMMITMENTDATE
,SUM(CASE WHEN PROD.FKRESERVE!=UAT.FKRESERVE THEN 1 ELSE 0 END) AS DIFF_FKRESERVE
,SUM(CASE WHEN PROD.RESERVETYPE!=UAT.RESERVETYPE THEN 1 ELSE 0 END) AS DIFF_RESERVETYPE
,SUM(CASE WHEN PROD.THIRDPARTYID!=UAT.THIRDPARTYID THEN 1 ELSE 0 END) AS DIFF_THIRDPARTYID
,SUM(CASE WHEN PROD.ROL_ID!=UAT.ROL_ID THEN 1 ELSE 0 END) AS DIFF_ROL_ID
,SUM(CASE WHEN PROD.CPY_ID!=UAT.CPY_ID THEN 1 ELSE 0 END) AS DIFF_CPY_ID
,SUM(CASE WHEN TRIM(UPPER(PROD.BENEFICIARY))!=TRIM(UPPER(UAT.BENEFICIARY)) THEN 1 ELSE 0 END) AS DIFF_BENEFICIARY
,SUM(CASE WHEN TRIM(UPPER(PROD.REASON))!=TRIM(UPPER(UAT.REASON)) THEN 1 ELSE 0 END) AS DIFF_REASON
,SUM(CASE WHEN PROD.STATE!=UAT.STATE THEN 1 ELSE 0 END) AS DIFF_STATE
,SUM(CASE WHEN PROD.TYPE!=UAT.TYPE THEN 1 ELSE 0 END) AS DIFF_TYPE
,SUM(CASE WHEN TRIM(UPPER(PROD.AMOUNT))!=TRIM(UPPER(UAT.AMOUNT)) THEN 1 ELSE 0 END) AS DIFF_AMOUNT
,SUM(CASE WHEN TRIM(UPPER(PROD.DONEBY))!=TRIM(UPPER(UAT.DONEBY)) THEN 1 ELSE 0 END) AS DIFF_DONEBY
,SUM(CASE WHEN TRIM(UPPER(PROD.PARTICIPATIONPERCENTAGE))!=TRIM(UPPER(UAT.PARTICIPATIONPERCENTAGE)) THEN 1 ELSE 0 END) AS DIFF_PARTICIPATIONPERCENTAGE
,SUM(CASE WHEN TRIM(UPPER(PROD.DEDUCTIBLEPERCENTAGE))!=TRIM(UPPER(UAT.DEDUCTIBLEPERCENTAGE)) THEN 1 ELSE 0 END) AS DIFF_DEDUCTIBLEPERCENTAGE
,SUM(CASE WHEN TRIM(UPPER(PROD.DEDUCTIBLEREFERENCE))!=TRIM(UPPER(UAT.DEDUCTIBLEREFERENCE)) THEN 1 ELSE 0 END) AS DIFF_DEDUCTIBLEREFERENCE
,SUM(CASE WHEN PROD.ISDEDUCTIBLEAPPLIED!=UAT.ISDEDUCTIBLEAPPLIED THEN 1 ELSE 0 END) AS DIFF_ISDEDUCTIBLEAPPLIED
,SUM(CASE WHEN TRIM(UPPER(PROD.DEDUCTIBLEAMOUNT))!=TRIM(UPPER(UAT.DEDUCTIBLEAMOUNT)) THEN 1 ELSE 0 END) AS DIFF_DEDUCTIBLEAMOUNT
,SUM(CASE WHEN PROD.ISPENALTYAPPLIED!=UAT.ISPENALTYAPPLIED THEN 1 ELSE 0 END) AS DIFF_ISPENALTYAPPLIED
,SUM(CASE WHEN TRIM(UPPER(PROD.PENALTYPERCENTAGE))!=TRIM(UPPER(UAT.PENALTYPERCENTAGE)) THEN 1 ELSE 0 END) AS DIFF_PENALTYPERCENTAGE
,SUM(CASE WHEN PROD.ISREFUNDAPPLIED!=UAT.ISREFUNDAPPLIED THEN 1 ELSE 0 END) AS DIFF_ISREFUNDAPPLIED
,SUM(CASE WHEN TRIM(UPPER(PROD.REFUNDPERCENTAGE))!=TRIM(UPPER(UAT.REFUNDPERCENTAGE)) THEN 1 ELSE 0 END) AS DIFF_REFUNDPERCENTAGE
,SUM(CASE WHEN PROD.ISTOTALPAYMENT!=UAT.ISTOTALPAYMENT THEN 1 ELSE 0 END) AS DIFF_ISTOTALPAYMENT
,SUM(CASE WHEN TRIM(UPPER(PROD.DISTRIBUTIONAMOUNT))!=TRIM(UPPER(UAT.DISTRIBUTIONAMOUNT)) THEN 1 ELSE 0 END) AS DIFF_DISTRIBUTIONAMOUNT
,SUM(CASE WHEN PROD.POR_OPERATIONDATE!=UAT.POR_OPERATIONDATE THEN 1 ELSE 0 END) AS DIFF_POR_OPERATIONDATE
,SUM(CASE WHEN PROD.POR_STARTDATE!=UAT.POR_STARTDATE THEN 1 ELSE 0 END) AS DIFF_POR_STARTDATE
,SUM(CASE WHEN TRIM(UPPER(PROD.COVERAGEDESC))!=TRIM(UPPER(UAT.COVERAGEDESC)) THEN 1 ELSE 0 END) AS DIFF_COVERAGEDESC
,SUM(CASE WHEN PROD.POR_ONHOLD!=UAT.POR_ONHOLD THEN 1 ELSE 0 END) AS DIFF_POR_ONHOLD
,SUM(CASE WHEN PROD.CRBF_ID!=UAT.CRBF_ID THEN 1 ELSE 0 END) AS DIFF_CRBF_ID
,SUM(CASE WHEN PROD.POR_ENDDATE!=UAT.POR_ENDDATE THEN 1 ELSE 0 END) AS DIFF_POR_ENDDATE
,SUM(CASE WHEN PROD.POR_NUMBER!=UAT.POR_NUMBER THEN 1 ELSE 0 END) AS DIFF_POR_NUMBER
,SUM(CASE WHEN PROD.POR_BENEFICIARY_ID!=UAT.POR_BENEFICIARY_ID THEN 1 ELSE 0 END) AS DIFF_POR_BENEFICIARY_ID
,SUM(CASE WHEN PROD.POR_BRANCH!=UAT.POR_BRANCH THEN 1 ELSE 0 END) AS DIFF_POR_BRANCH
,SUM(CASE WHEN PROD.POR_DEFAULTDEDUCTIBLE!=UAT.POR_DEFAULTDEDUCTIBLE THEN 1 ELSE 0 END) AS DIFF_POR_DEFAULTDEDUCTIBLE
,SUM(CASE WHEN PROD.POR_FRANCHISEAMOUNT!=UAT.POR_FRANCHISEAMOUNT THEN 1 ELSE 0 END) AS DIFF_POR_FRANCHISEAMOUNT
,SUM(CASE WHEN PROD.POR_DEDUCTIBLETYPE!=UAT.POR_DEDUCTIBLETYPE THEN 1 ELSE 0 END) AS DIFF_POR_DEDUCTIBLETYPE
,SUM(CASE WHEN TRIM(UPPER(PROD.POR_ADDITIONALINFORMATION))!=TRIM(UPPER(UAT.POR_ADDITIONALINFORMATION)) THEN 1 ELSE 0 END) AS DIFF_POR_ADDITIONALINFORMATION
,SUM(CASE WHEN PROD.POR_FINAL!=UAT.POR_FINAL THEN 1 ELSE 0 END) AS DIFF_POR_FINAL
,SUM(CASE WHEN PROD.POR_ITEMRESERVE!=UAT.POR_ITEMRESERVE THEN 1 ELSE 0 END) AS DIFF_POR_ITEMRESERVE
,SUM(CASE WHEN PROD.ADT_EVENTDATE!=UAT.ADT_EVENTDATE THEN 1 ELSE 0 END) AS DIFF_ADT_EVENTDATE
FROM iter-data-storage-pv-uat.acsele_data.PAYMENTORDER_raw UAT 
INNER JOIN interseguro-data.acsele_data.PAYMENTORDER_raw PROD 
ON UAT.PAYMENTORDERID = PROD.PAYMENTORDERID