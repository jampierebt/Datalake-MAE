SELECT 
PROD.NUMERO_POLIZA
,PROD.ID_PRODUCTO
,PROD.DESTINO
,UAT.DESTINO
FROM POLIZA_PROD PROD
LEFT JOIN POLIZA_UAT UAT
ON PROD.NUMERO_POLIZA= UAT.NUMERO_POLIZA
AND PROD.ID_PRODUCTO= UAT.ID_PRODUCTO
WHERE (CASE WHEN TRIM(UPPER(PROD.DESTINO))!=TRIM(UPPER(UAT.DESTINO)) THEN 1 ELSE 0 END )=1