SELECT SUM(CASE WHEN TRIM(UPPER(PROD.NUMERO_POLIZA)) IS NULL AND TRIM(UPPER(UAT.NUMERO_POLIZA))="" THEN 1 ELSE 0 END) AS DIFF_NUMERO_POLIZA
,SUM(CASE WHEN TRIM(UPPER(PROD.ID_POLIZA)) IS NULL AND TRIM(UPPER(UAT.ID_POLIZA))="" THEN 1 ELSE 0 END) AS DIFF_ID_POLIZA
,SUM(CASE WHEN TRIM(UPPER(PROD.NOMBRE_PRODUCTO)) IS NULL AND TRIM(UPPER(UAT.NOMBRE_PRODUCTO))="" THEN 1 ELSE 0 END) AS DIFF_NOMBRE_PRODUCTO
,SUM(CASE WHEN TRIM(UPPER(PROD.EVENT)) IS NULL AND TRIM(UPPER(UAT.EVENT))="" THEN 1 ELSE 0 END) AS DIFF_EVENT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHA_SOLICITUD)) IS NULL AND TRIM(UPPER(UAT.FECHA_SOLICITUD))="" THEN 1 ELSE 0 END) AS DIFF_FECHA_SOLICITUD
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHA_MOVIMIENTO)) IS NULL AND TRIM(UPPER(UAT.FECHA_MOVIMIENTO))="" THEN 1 ELSE 0 END) AS DIFF_FECHA_MOVIMIENTO
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHA_EFECTIVA)) IS NULL AND TRIM(UPPER(UAT.FECHA_EFECTIVA))="" THEN 1 ELSE 0 END) AS DIFF_FECHA_EFECTIVA
,SUM(CASE WHEN TRIM(UPPER(PROD.TIPO_ENDOSO)) IS NULL AND TRIM(UPPER(UAT.TIPO_ENDOSO))="" THEN 1 ELSE 0 END) AS DIFF_TIPO_ENDOSO
,SUM(CASE WHEN TRIM(UPPER(PROD.USUARIO_SOLICITUD)) IS NULL AND TRIM(UPPER(UAT.USUARIO_SOLICITUD))="" THEN 1 ELSE 0 END) AS DIFF_USUARIO_SOLICITUD
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMERO_SOLICITUD)) IS NULL AND TRIM(UPPER(UAT.NUMERO_SOLICITUD))="" THEN 1 ELSE 0 END) AS DIFF_NUMERO_SOLICITUD
,SUM(CASE WHEN TRIM(UPPER(PROD.MESES_DIFERIDOS)) IS NULL AND TRIM(UPPER(UAT.MESES_DIFERIDOS))="" THEN 1 ELSE 0 END) AS DIFF_MESES_DIFERIDOS
,SUM(CASE WHEN TRIM(UPPER(PROD.MOVIMIENTO)) IS NULL AND TRIM(UPPER(UAT.MOVIMIENTO))="" THEN 1 ELSE 0 END) AS DIFF_MOVIMIENTO