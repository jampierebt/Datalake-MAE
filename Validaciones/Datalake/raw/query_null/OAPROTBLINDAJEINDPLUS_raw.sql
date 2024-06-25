SELECT SUM(CASE WHEN TRIM(UPPER(PROD.EDADINPUT)) IS NULL AND TRIM(UPPER(UAT.EDADINPUT))="" THEN 1 ELSE 0 END) AS DIFF_EDADINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADVALUE)) IS NULL AND TRIM(UPPER(UAT.EDADVALUE))="" THEN 1 ELSE 0 END) AS DIFF_EDADVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMPLANINTERLOCBINPUT)) IS NULL AND TRIM(UPPER(UAT.NUMPLANINTERLOCBINPUT))="" THEN 1 ELSE 0 END) AS DIFF_NUMPLANINTERLOCBINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMPLANINTERLOCBVALUE)) IS NULL AND TRIM(UPPER(UAT.NUMPLANINTERLOCBVALUE))="" THEN 1 ELSE 0 END) AS DIFF_NUMPLANINTERLOCBVALUE
FROM iter-data-storage-pv-uat.acsele_data.OAPROTBLINDAJEINDPLUS_raw UAT 
INNER JOIN interseguro-data.acsele_data.OAPROTBLINDAJEINDPLUS_raw PROD 
ON UAT.PK = PROD.PK