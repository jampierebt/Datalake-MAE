SELECT SUM(CASE WHEN PROD.AUDITDATE!=UAT.AUDITDATE THEN 1 ELSE 0 END) AS DIFF_AUDITDATE
,SUM(CASE WHEN PROD.PK!=UAT.PK THEN 1 ELSE 0 END) AS DIFF_PK
,SUM(CASE WHEN PROD.STATIC!=UAT.STATIC THEN 1 ELSE 0 END) AS DIFF_STATIC
,SUM(CASE WHEN PROD.STATUS!=UAT.STATUS THEN 1 ELSE 0 END) AS DIFF_STATUS
,SUM(CASE WHEN TRIM(UPPER(PROD.PRODUCTOSVIDAINPUT))!=TRIM(UPPER(UAT.PRODUCTOSVIDAINPUT)) THEN 1 ELSE 0 END) AS DIFF_PRODUCTOSVIDAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.PRODUCTOSVIDAVALUE))!=TRIM(UPPER(UAT.PRODUCTOSVIDAVALUE)) THEN 1 ELSE 0 END) AS DIFF_PRODUCTOSVIDAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.PERIODOPAGOPRIMAINPUT))!=TRIM(UPPER(UAT.PERIODOPAGOPRIMAINPUT)) THEN 1 ELSE 0 END) AS DIFF_PERIODOPAGOPRIMAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.PERIODOPAGOPRIMAVALUE))!=TRIM(UPPER(UAT.PERIODOPAGOPRIMAVALUE)) THEN 1 ELSE 0 END) AS DIFF_PERIODOPAGOPRIMAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CAPITALASEGANTACCINPUT))!=TRIM(UPPER(UAT.CAPITALASEGANTACCINPUT)) THEN 1 ELSE 0 END) AS DIFF_CAPITALASEGANTACCINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CAPITALASEGANTACCVALUE))!=TRIM(UPPER(UAT.CAPITALASEGANTACCVALUE)) THEN 1 ELSE 0 END) AS DIFF_CAPITALASEGANTACCVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CAPITALASEGURADOACCINPUT))!=TRIM(UPPER(UAT.CAPITALASEGURADOACCINPUT)) THEN 1 ELSE 0 END) AS DIFF_CAPITALASEGURADOACCINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CAPITALASEGURADOACCVALUE))!=TRIM(UPPER(UAT.CAPITALASEGURADOACCVALUE)) THEN 1 ELSE 0 END) AS DIFF_CAPITALASEGURADOACCVALUE
,SUM(CASE WHEN PROD.FECHA_PROCESO!=UAT.FECHA_PROCESO THEN 1 ELSE 0 END) AS DIFF_FECHA_PROCESO
FROM iter-data-storage-pv-uat.acsele_data.URVIDATOTALPROTEGIDA_raw UAT 
INNER JOIN interseguro-data.acsele_data.URVIDATOTALPROTEGIDA_raw PROD 
ON UAT.PK = PROD.PK