SELECT SUM(CASE WHEN PROD.CLAIMDATE!=UAT.CLAIMDATE THEN 1 ELSE 0 END) AS DIFF_CLAIMDATE
,SUM(CASE WHEN PROD.CLAIMINSURANCEOBJECTID!=UAT.CLAIMINSURANCEOBJECTID THEN 1 ELSE 0 END) AS DIFF_CLAIMINSURANCEOBJECTID
,SUM(CASE WHEN PROD.AGREGATEDINSURANCEOBJECTID!=UAT.AGREGATEDINSURANCEOBJECTID THEN 1 ELSE 0 END) AS DIFF_AGREGATEDINSURANCEOBJECTID
,SUM(CASE WHEN PROD.CLAIMRISKUNITID!=UAT.CLAIMRISKUNITID THEN 1 ELSE 0 END) AS DIFF_CLAIMRISKUNITID
,SUM(CASE WHEN TRIM(UPPER(PROD.DESCRIPTION))!=TRIM(UPPER(UAT.DESCRIPTION)) THEN 1 ELSE 0 END) AS DIFF_DESCRIPTION
,SUM(CASE WHEN PROD.DAMAGEDCOID!=UAT.DAMAGEDCOID THEN 1 ELSE 0 END) AS DIFF_DAMAGEDCOID
,SUM(CASE WHEN PROD.DAMAGEDCOTEMPLATE!=UAT.DAMAGEDCOTEMPLATE THEN 1 ELSE 0 END) AS DIFF_DAMAGEDCOTEMPLATE
,SUM(CASE WHEN PROD.OPERATIONPK!=UAT.OPERATIONPK THEN 1 ELSE 0 END) AS DIFF_OPERATIONPK
,SUM(CASE WHEN PROD.FECHA_PROCESO!=UAT.FECHA_PROCESO THEN 1 ELSE 0 END) AS DIFF_FECHA_PROCESO
FROM iter-data-storage-pv-uat.acsele_data.CLAIMINSURANCEOBJECT_raw UAT 
INNER JOIN interseguro-data.acsele_data.CLAIMINSURANCEOBJECT_raw PROD 
ON UAT.CLAIMINSURANCEOBJECTID = PROD.CLAIMINSURANCEOBJECTID