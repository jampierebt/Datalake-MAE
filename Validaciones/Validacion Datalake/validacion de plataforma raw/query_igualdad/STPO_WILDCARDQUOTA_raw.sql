SELECT SUM(CASE WHEN PROD.WQUO_ID!=UAT.WQUO_ID THEN 1 ELSE 0 END) AS DIFF_WQUO_ID
,SUM(CASE WHEN PROD.WQUO_IDREF!=UAT.WQUO_IDREF THEN 1 ELSE 0 END) AS DIFF_WQUO_IDREF
,SUM(CASE WHEN PROD.APO_ID!=UAT.APO_ID THEN 1 ELSE 0 END) AS DIFF_APO_ID
,SUM(CASE WHEN PROD.WQUO_NUMQUOTA!=UAT.WQUO_NUMQUOTA THEN 1 ELSE 0 END) AS DIFF_WQUO_NUMQUOTA
,SUM(CASE WHEN PROD.WQUO_SCHEDULEDDATE!=UAT.WQUO_SCHEDULEDDATE THEN 1 ELSE 0 END) AS DIFF_WQUO_SCHEDULEDDATE
,SUM(CASE WHEN PROD.WQUO_SCHEDULEDTYPE!=UAT.WQUO_SCHEDULEDTYPE THEN 1 ELSE 0 END) AS DIFF_WQUO_SCHEDULEDTYPE
,SUM(CASE WHEN PROD.WQUO_APPLIEDDATE!=UAT.WQUO_APPLIEDDATE THEN 1 ELSE 0 END) AS DIFF_WQUO_APPLIEDDATE
,SUM(CASE WHEN PROD.WQUO_STATUS!=UAT.WQUO_STATUS THEN 1 ELSE 0 END) AS DIFF_WQUO_STATUS
,SUM(CASE WHEN TRIM(UPPER(PROD.WQUO_RESTRICTIVEDATE))!=TRIM(UPPER(UAT.WQUO_RESTRICTIVEDATE)) THEN 1 ELSE 0 END) AS DIFF_WQUO_RESTRICTIVEDATE
,SUM(CASE WHEN PROD.OPM_ID!=UAT.OPM_ID THEN 1 ELSE 0 END) AS DIFF_OPM_ID
,SUM(CASE WHEN PROD.COR_ID!=UAT.COR_ID THEN 1 ELSE 0 END) AS DIFF_COR_ID
,SUM(CASE WHEN TRIM(UPPER(PROD.EVENT_NAME))!=TRIM(UPPER(UAT.EVENT_NAME)) THEN 1 ELSE 0 END) AS DIFF_EVENT_NAME
,SUM(CASE WHEN PROD.FECHA_PROCESO!=UAT.FECHA_PROCESO THEN 1 ELSE 0 END) AS DIFF_FECHA_PROCESO
FROM iter-data-storage-pv-uat.acsele_data.STPO_WILDCARDQUOTA_raw UAT 
INNER JOIN interseguro-data.acsele_data.STPO_WILDCARDQUOTA_raw PROD 
ON UAT.WQUO_ID = PROD.WQUO_ID