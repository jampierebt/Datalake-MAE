SELECT SUM(CASE WHEN TRIM(UPPER(PROD.PK)) IS NULL AND TRIM(UPPER(UAT.PK))="" THEN 1 ELSE 0 END) AS DIFF_PK
,SUM(CASE WHEN TRIM(UPPER(PROD.STATIC)) IS NULL AND TRIM(UPPER(UAT.STATIC))="" THEN 1 ELSE 0 END) AS DIFF_STATIC
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMEROPOLIZAINPUT)) IS NULL AND TRIM(UPPER(UAT.NUMEROPOLIZAINPUT))="" THEN 1 ELSE 0 END) AS DIFF_NUMEROPOLIZAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAEMISIONINPUT)) IS NULL AND TRIM(UPPER(UAT.FECHAEMISIONINPUT))="" THEN 1 ELSE 0 END) AS DIFF_FECHAEMISIONINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.VIGENCIAINPUT)) IS NULL AND TRIM(UPPER(UAT.VIGENCIAINPUT))="" THEN 1 ELSE 0 END) AS DIFF_VIGENCIAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CANALVENTAINPUT)) IS NULL AND TRIM(UPPER(UAT.CANALVENTAINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CANALVENTAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FRECUENCIAPAGOINPUT)) IS NULL AND TRIM(UPPER(UAT.FRECUENCIAPAGOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_FRECUENCIAPAGOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHASUSPCANCELINPUT)) IS NULL AND TRIM(UPPER(UAT.FECHASUSPCANCELINPUT))="" THEN 1 ELSE 0 END) AS DIFF_FECHASUSPCANCELINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.MONEDAVALUE)) IS NULL AND TRIM(UPPER(UAT.MONEDAVALUE))="" THEN 1 ELSE 0 END) AS DIFF_MONEDAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.EMAILENVIOPOLIZAINPUT)) IS NULL AND TRIM(UPPER(UAT.EMAILENVIOPOLIZAINPUT))="" THEN 1 ELSE 0 END) AS DIFF_EMAILENVIOPOLIZAINPUT
FROM iter-data-storage-pv-uat.acsele_data.PREPOLICY_raw UAT 
INNER JOIN interseguro-data.acsele_data.PREPOLICY_raw PROD 
ON UAT.PK = PROD.PK