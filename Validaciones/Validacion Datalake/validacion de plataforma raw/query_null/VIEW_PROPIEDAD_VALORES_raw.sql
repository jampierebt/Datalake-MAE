SELECT SUM(CASE WHEN TRIM(UPPER(PROD.SIMBOLO)) IS NULL AND TRIM(UPPER(UAT.SIMBOLO))="" THEN 1 ELSE 0 END) AS DIFF_SIMBOLO
,SUM(CASE WHEN TRIM(UPPER(PROD.TIPO)) IS NULL AND TRIM(UPPER(UAT.TIPO))="" THEN 1 ELSE 0 END) AS DIFF_TIPO
,SUM(CASE WHEN TRIM(UPPER(PROD.PTR_DISPLAY)) IS NULL AND TRIM(UPPER(UAT.PTR_DISPLAY))="" THEN 1 ELSE 0 END) AS DIFF_PTR_DISPLAY
,SUM(CASE WHEN TRIM(UPPER(PROD.PTR_DISPLAY_OPCIONAL)) IS NULL AND TRIM(UPPER(UAT.PTR_DISPLAY_OPCIONAL))="" THEN 1 ELSE 0 END) AS DIFF_PTR_DISPLAY_OPCIONAL
,SUM(CASE WHEN TRIM(UPPER(PROD.TRDESC)) IS NULL AND TRIM(UPPER(UAT.TRDESC))="" THEN 1 ELSE 0 END) AS DIFF_TRDESC
,SUM(CASE WHEN TRIM(UPPER(PROD.TR_DISPLAY)) IS NULL AND TRIM(UPPER(UAT.TR_DISPLAY))="" THEN 1 ELSE 0 END) AS DIFF_TR_DISPLAY
,SUM(CASE WHEN TRIM(UPPER(PROD.TR_DISPLAY_OPCIONAL)) IS NULL AND TRIM(UPPER(UAT.TR_DISPLAY_OPCIONAL))="" THEN 1 ELSE 0 END) AS DIFF_TR_DISPLAY_OPCIONAL
,SUM(CASE WHEN TRIM(UPPER(PROD.TIPOPROP)) IS NULL AND TRIM(UPPER(UAT.TIPOPROP))="" THEN 1 ELSE 0 END) AS DIFF_TIPOPROP