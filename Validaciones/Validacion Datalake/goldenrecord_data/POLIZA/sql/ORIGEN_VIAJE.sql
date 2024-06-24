SELECT 
PROD.NUMERO_POLIZA
,PROD.ID_PRODUCTO
,PROD.ORIGEN_VIAJE
,UAT.ORIGEN_VIAJE
FROM POLIZA_PROD PROD
LEFT JOIN POLIZA_UAT UAT
ON PROD.NUMERO_POLIZA= UAT.NUMERO_POLIZA
AND PROD.ID_PRODUCTO= UAT.ID_PRODUCTO
WHERE (CASE WHEN TRIM(UPPER(PROD.ORIGEN_VIAJE))!=TRIM(UPPER(UAT.ORIGEN_VIAJE)) THEN 1 ELSE 0 END )=1