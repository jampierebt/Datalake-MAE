SELECT SUM(CASE WHEN PROD.AUDITDATE!=UAT.AUDITDATE THEN 1 ELSE 0 END) AS DIFF_AUDITDATE
,SUM(CASE WHEN PROD.RUD_VALIDITY!=UAT.RUD_VALIDITY THEN 1 ELSE 0 END) AS DIFF_RUD_VALIDITY
,SUM(CASE WHEN PROD.STATUS!=UAT.STATUS THEN 1 ELSE 0 END) AS DIFF_STATUS
,SUM(CASE WHEN PROD.AGREGATEDPARENTID!=UAT.AGREGATEDPARENTID THEN 1 ELSE 0 END) AS DIFF_AGREGATEDPARENTID
,SUM(CASE WHEN PROD.RUD_ISINHERITEDEVENT!=UAT.RUD_ISINHERITEDEVENT THEN 1 ELSE 0 END) AS DIFF_RUD_ISINHERITEDEVENT
,SUM(CASE WHEN PROD.IDDCOEVENT!=UAT.IDDCOEVENT THEN 1 ELSE 0 END) AS DIFF_IDDCOEVENT
,SUM(CASE WHEN TRIM(UPPER(PROD.EVENT))!=TRIM(UPPER(UAT.EVENT)) THEN 1 ELSE 0 END) AS DIFF_EVENT
,SUM(CASE WHEN PROD.TIME_STAMP!=UAT.TIME_STAMP THEN 1 ELSE 0 END) AS DIFF_TIME_STAMP
,SUM(CASE WHEN PROD.FINISHDATE!=UAT.FINISHDATE THEN 1 ELSE 0 END) AS DIFF_FINISHDATE
,SUM(CASE WHEN PROD.INITIALDATE!=UAT.INITIALDATE THEN 1 ELSE 0 END) AS DIFF_INITIALDATE
,SUM(CASE WHEN PROD.STATEID!=UAT.STATEID THEN 1 ELSE 0 END) AS DIFF_STATEID
,SUM(CASE WHEN PROD.DCOID!=UAT.DCOID THEN 1 ELSE 0 END) AS DIFF_DCOID
,SUM(CASE WHEN PROD.OPERATIONPK!=UAT.OPERATIONPK THEN 1 ELSE 0 END) AS DIFF_OPERATIONPK
,SUM(CASE WHEN PROD.AGREGATEDOBJECTID!=UAT.AGREGATEDOBJECTID THEN 1 ELSE 0 END) AS DIFF_AGREGATEDOBJECTID
,SUM(CASE WHEN PROD.FECHA_PROCESO!=UAT.FECHA_PROCESO THEN 1 ELSE 0 END) AS DIFF_FECHA_PROCESO
FROM iter-data-storage-pv-uat.acsele_data.RISKUNITDCO_raw UAT 
INNER JOIN interseguro-data.acsele_data.RISKUNITDCO_raw PROD 
ON UAT.OPERATIONPK = PROD.OPERATIONPK 
AND UAT.AGREGATEDOBJECTID = PROD.AGREGATEDOBJECTID