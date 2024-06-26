SELECT SUM(CASE WHEN TRIM(UPPER(PROD.AUDITDATE)) IS NULL AND TRIM(UPPER(UAT.AUDITDATE))="" THEN 1 ELSE 0 END) AS DIFF_AUDITDATE
,SUM(CASE WHEN TRIM(UPPER(PROD.DESCRIPTION)) IS NULL AND TRIM(UPPER(UAT.DESCRIPTION))="" THEN 1 ELSE 0 END) AS DIFF_DESCRIPTION
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMERO_POLIZA)) IS NULL AND TRIM(UPPER(UAT.NUMERO_POLIZA))="" THEN 1 ELSE 0 END) AS DIFF_NUMERO_POLIZA
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMERO_COTIZACION)) IS NULL AND TRIM(UPPER(UAT.NUMERO_COTIZACION))="" THEN 1 ELSE 0 END) AS DIFF_NUMERO_COTIZACION
,SUM(CASE WHEN TRIM(UPPER(PROD.ESTADO)) IS NULL AND TRIM(UPPER(UAT.ESTADO))="" THEN 1 ELSE 0 END) AS DIFF_ESTADO