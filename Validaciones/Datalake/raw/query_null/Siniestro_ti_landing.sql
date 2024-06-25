SELECT SUM(CASE WHEN TRIM(UPPER(PROD.NUMERO_SINIESTRO)) IS NULL AND TRIM(UPPER(UAT.NUMERO_SINIESTRO))="" THEN 1 ELSE 0 END) AS DIFF_NUMERO_SINIESTRO
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMERO_SINIESTRO_SEARCH)) IS NULL AND TRIM(UPPER(UAT.NUMERO_SINIESTRO_SEARCH))="" THEN 1 ELSE 0 END) AS DIFF_NUMERO_SINIESTRO_SEARCH
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMERO_POLIZA)) IS NULL AND TRIM(UPPER(UAT.NUMERO_POLIZA))="" THEN 1 ELSE 0 END) AS DIFF_NUMERO_POLIZA
,SUM(CASE WHEN TRIM(UPPER(PROD.NOMBRE_BENEFICARIO)) IS NULL AND TRIM(UPPER(UAT.NOMBRE_BENEFICARIO))="" THEN 1 ELSE 0 END) AS DIFF_NOMBRE_BENEFICARIO
,SUM(CASE WHEN TRIM(UPPER(PROD.COBERTURA)) IS NULL AND TRIM(UPPER(UAT.COBERTURA))="" THEN 1 ELSE 0 END) AS DIFF_COBERTURA
,SUM(CASE WHEN TRIM(UPPER(PROD.PARTICIPACION)) IS NULL AND TRIM(UPPER(UAT.PARTICIPACION))="" THEN 1 ELSE 0 END) AS DIFF_PARTICIPACION
,SUM(CASE WHEN TRIM(UPPER(PROD.ESTADO_PAGO)) IS NULL AND TRIM(UPPER(UAT.ESTADO_PAGO))="" THEN 1 ELSE 0 END) AS DIFF_ESTADO_PAGO
,SUM(CASE WHEN TRIM(UPPER(PROD.MONEDA)) IS NULL AND TRIM(UPPER(UAT.MONEDA))="" THEN 1 ELSE 0 END) AS DIFF_MONEDA
,SUM(CASE WHEN TRIM(UPPER(PROD.MONTO)) IS NULL AND TRIM(UPPER(UAT.MONTO))="" THEN 1 ELSE 0 END) AS DIFF_MONTO