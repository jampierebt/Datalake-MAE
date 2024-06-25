SELECT SUM(CASE WHEN TRIM(UPPER(PROD.TTL_NAME))!=TRIM(UPPER(UAT.TTL_NAME)) THEN 1 ELSE 0 END) AS DIFF_TTL_NAME
,SUM(CASE WHEN TRIM(UPPER(PROD.TTL_VALUE))!=TRIM(UPPER(UAT.TTL_VALUE)) THEN 1 ELSE 0 END) AS DIFF_TTL_VALUE
,SUM(CASE WHEN PROD.FECHA_PROCESO!=UAT.FECHA_PROCESO THEN 1 ELSE 0 END) AS DIFF_FECHA_PROCESO