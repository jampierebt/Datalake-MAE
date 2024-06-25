SELECT 
PROD.NUMERO_POLIZA
,PROD.ID_PRODUCTO
,PROD.NOMBRE_PRODUCTO_COD_SBS
,UAT.NOMBRE_PRODUCTO_COD_SBS
FROM POLIZA_PROD PROD
LEFT JOIN POLIZA_UAT UAT
ON PROD.NUMERO_POLIZA= UAT.NUMERO_POLIZA
AND PROD.ID_PRODUCTO= UAT.ID_PRODUCTO
WHERE (CASE WHEN TRIM(UPPER(PROD.NOMBRE_PRODUCTO_COD_SBS))!=TRIM(UPPER(UAT.NOMBRE_PRODUCTO_COD_SBS)) THEN 1 ELSE 0 END )=1