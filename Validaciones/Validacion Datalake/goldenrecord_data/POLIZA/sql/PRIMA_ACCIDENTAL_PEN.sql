SELECT 
PROD.NUMERO_POLIZA
,PROD.ID_PRODUCTO
,PROD.PRIMA_ACCIDENTAL_PEN
,UAT.PRIMA_ACCIDENTAL_PEN
FROM POLIZA_PROD PROD
LEFT JOIN POLIZA_UAT UAT
ON PROD.NUMERO_POLIZA= UAT.NUMERO_POLIZA
AND PROD.ID_PRODUCTO= UAT.ID_PRODUCTO
WHERE (CASE WHEN PROD.PRIMA_ACCIDENTAL_PEN!=UAT.PRIMA_ACCIDENTAL_PEN THEN 1 ELSE 0 END )=1
