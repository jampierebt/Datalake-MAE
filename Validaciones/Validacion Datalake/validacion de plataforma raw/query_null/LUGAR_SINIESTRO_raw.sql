SELECT SUM(CASE WHEN TRIM(UPPER(PROD.NUMERO_SINIESTRO)) IS NULL AND TRIM(UPPER(UAT.NUMERO_SINIESTRO))="" THEN 1 ELSE 0 END) AS DIFF_NUMERO_SINIESTRO
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMERO_POLIZA)) IS NULL AND TRIM(UPPER(UAT.NUMERO_POLIZA))="" THEN 1 ELSE 0 END) AS DIFF_NUMERO_POLIZA
,SUM(CASE WHEN TRIM(UPPER(PROD.LUGAR_SINIESTRO)) IS NULL AND TRIM(UPPER(UAT.LUGAR_SINIESTRO))="" THEN 1 ELSE 0 END) AS DIFF_LUGAR_SINIESTRO