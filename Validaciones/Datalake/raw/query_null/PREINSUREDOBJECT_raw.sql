SELECT SUM(CASE WHEN TRIM(UPPER(PROD.PK)) IS NULL AND TRIM(UPPER(UAT.PK))="" THEN 1 ELSE 0 END) AS DIFF_PK
,SUM(CASE WHEN TRIM(UPPER(PROD.STATIC)) IS NULL AND TRIM(UPPER(UAT.STATIC))="" THEN 1 ELSE 0 END) AS DIFF_STATIC
,SUM(CASE WHEN TRIM(UPPER(PROD.STATUS)) IS NULL AND TRIM(UPPER(UAT.STATUS))="" THEN 1 ELSE 0 END) AS DIFF_STATUS
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMEROOBJETOASEGINPUT)) IS NULL AND TRIM(UPPER(UAT.NUMEROOBJETOASEGINPUT))="" THEN 1 ELSE 0 END) AS DIFF_NUMEROOBJETOASEGINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMEROOBJETOASEGVALUE)) IS NULL AND TRIM(UPPER(UAT.NUMEROOBJETOASEGVALUE))="" THEN 1 ELSE 0 END) AS DIFF_NUMEROOBJETOASEGVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.NOMCOMASEGURADOINPUT)) IS NULL AND TRIM(UPPER(UAT.NOMCOMASEGURADOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_NOMCOMASEGURADOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NOMCOMASEGURADOVALUE)) IS NULL AND TRIM(UPPER(UAT.NOMCOMASEGURADOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_NOMCOMASEGURADOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.NOMCOMBENEFICIARIOINPUT)) IS NULL AND TRIM(UPPER(UAT.NOMCOMBENEFICIARIOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_NOMCOMBENEFICIARIOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NOMCOMBENEFICIARIOVALUE)) IS NULL AND TRIM(UPPER(UAT.NOMCOMBENEFICIARIOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_NOMCOMBENEFICIARIOVALUE
FROM iter-data-storage-pv-uat.acsele_data.PREINSUREDOBJECT_raw UAT 
INNER JOIN interseguro-data.acsele_data.PREINSUREDOBJECT_raw PROD 
ON UAT.PK = PROD.PK