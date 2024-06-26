SELECT SUM(CASE WHEN PROD.AUDITDATE!=UAT.AUDITDATE THEN 1 ELSE 0 END) AS DIFF_AUDITDATE
,SUM(CASE WHEN TRIM(UPPER(PROD.PK))!=TRIM(UPPER(UAT.PK)) THEN 1 ELSE 0 END) AS DIFF_PK
,SUM(CASE WHEN TRIM(UPPER(PROD.STATIC))!=TRIM(UPPER(UAT.STATIC)) THEN 1 ELSE 0 END) AS DIFF_STATIC
,SUM(CASE WHEN TRIM(UPPER(PROD.STATUS))!=TRIM(UPPER(UAT.STATUS)) THEN 1 ELSE 0 END) AS DIFF_STATUS
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADASEGINPUT))!=TRIM(UPPER(UAT.EDADASEGINPUT)) THEN 1 ELSE 0 END) AS DIFF_EDADASEGINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADASEGVALUE))!=TRIM(UPPER(UAT.EDADASEGVALUE)) THEN 1 ELSE 0 END) AS DIFF_EDADASEGVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.SEXOASEGINPUT))!=TRIM(UPPER(UAT.SEXOASEGINPUT)) THEN 1 ELSE 0 END) AS DIFF_SEXOASEGINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.SEXOASEGVALUE))!=TRIM(UPPER(UAT.SEXOASEGVALUE)) THEN 1 ELSE 0 END) AS DIFF_SEXOASEGVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.OPCIONPLANAOINPUT))!=TRIM(UPPER(UAT.OPCIONPLANAOINPUT)) THEN 1 ELSE 0 END) AS DIFF_OPCIONPLANAOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.OPCIONPLANAOVALUE))!=TRIM(UPPER(UAT.OPCIONPLANAOVALUE)) THEN 1 ELSE 0 END) AS DIFF_OPCIONPLANAOVALUE
,SUM(CASE WHEN PROD.FECHA_PROCESO!=UAT.FECHA_PROCESO THEN 1 ELSE 0 END) AS DIFF_FECHA_PROCESO
FROM iter-data-storage-pv-uat.acsele_data.OAACCIDENTEASISTEN_raw UAT 
INNER JOIN interseguro-data.acsele_data.OAACCIDENTEASISTEN_raw PROD 
ON UAT.PK = PROD.PK