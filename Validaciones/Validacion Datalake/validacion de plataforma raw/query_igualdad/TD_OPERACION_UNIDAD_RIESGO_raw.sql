SELECT SUM(CASE WHEN PROD.AUDITDATE_SYSTEM_DATE!=UAT.AUDITDATE_SYSTEM_DATE THEN 1 ELSE 0 END) AS DIFF_AUDITDATE_SYSTEM_DATE
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMERO_POLIZA))!=TRIM(UPPER(UAT.NUMERO_POLIZA)) THEN 1 ELSE 0 END) AS DIFF_NUMERO_POLIZA
,SUM(CASE WHEN PROD.NUMERO_OPERACION!=UAT.NUMERO_OPERACION THEN 1 ELSE 0 END) AS DIFF_NUMERO_OPERACION
,SUM(CASE WHEN PROD.ID_PRODUCTO!=UAT.ID_PRODUCTO THEN 1 ELSE 0 END) AS DIFF_ID_PRODUCTO
,SUM(CASE WHEN TRIM(UPPER(PROD.NOMBRE_PRODUCTO))!=TRIM(UPPER(UAT.NOMBRE_PRODUCTO)) THEN 1 ELSE 0 END) AS DIFF_NOMBRE_PRODUCTO
,SUM(CASE WHEN TRIM(UPPER(PROD.STATUS_OPERATION))!=TRIM(UPPER(UAT.STATUS_OPERATION)) THEN 1 ELSE 0 END) AS DIFF_STATUS_OPERATION
,SUM(CASE WHEN PROD.AGREGATEDOBJECTID!=UAT.AGREGATEDOBJECTID THEN 1 ELSE 0 END) AS DIFF_AGREGATEDOBJECTID
,SUM(CASE WHEN PROD.STATEID!=UAT.STATEID THEN 1 ELSE 0 END) AS DIFF_STATEID
,SUM(CASE WHEN TRIM(UPPER(PROD.ESTADO_UND_RIESGO))!=TRIM(UPPER(UAT.ESTADO_UND_RIESGO)) THEN 1 ELSE 0 END) AS DIFF_ESTADO_UND_RIESGO
,SUM(CASE WHEN TRIM(UPPER(PROD.TIME_STAMP))!=TRIM(UPPER(UAT.TIME_STAMP)) THEN 1 ELSE 0 END) AS DIFF_TIME_STAMP
,SUM(CASE WHEN TRIM(UPPER(PROD.AUDITDATE))!=TRIM(UPPER(UAT.AUDITDATE)) THEN 1 ELSE 0 END) AS DIFF_AUDITDATE
,SUM(CASE WHEN PROD.IDDCOEVENT!=UAT.IDDCOEVENT THEN 1 ELSE 0 END) AS DIFF_IDDCOEVENT
,SUM(CASE WHEN PROD.AGREGATEDPARENTID!=UAT.AGREGATEDPARENTID THEN 1 ELSE 0 END) AS DIFF_AGREGATEDPARENTID
,SUM(CASE WHEN PROD.STATUS!=UAT.STATUS THEN 1 ELSE 0 END) AS DIFF_STATUS
,SUM(CASE WHEN PROD.RUD_VALIDITY!=UAT.RUD_VALIDITY THEN 1 ELSE 0 END) AS DIFF_RUD_VALIDITY
,SUM(CASE WHEN TRIM(UPPER(PROD.TABLA_FUENTE))!=TRIM(UPPER(UAT.TABLA_FUENTE)) THEN 1 ELSE 0 END) AS DIFF_TABLA_FUENTE
,SUM(CASE WHEN TRIM(UPPER(PROD.PERIODOPAGOPRIMAINPUT))!=TRIM(UPPER(UAT.PERIODOPAGOPRIMAINPUT)) THEN 1 ELSE 0 END) AS DIFF_PERIODOPAGOPRIMAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CAPITALASEGURADOINPUT))!=TRIM(UPPER(UAT.CAPITALASEGURADOINPUT)) THEN 1 ELSE 0 END) AS DIFF_CAPITALASEGURADOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CAPITALASEGANTVFINPUT))!=TRIM(UPPER(UAT.CAPITALASEGANTVFINPUT)) THEN 1 ELSE 0 END) AS DIFF_CAPITALASEGANTVFINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.SUMAASEGURADASEGTRAMOINPUT))!=TRIM(UPPER(UAT.SUMAASEGURADASEGTRAMOINPUT)) THEN 1 ELSE 0 END) AS DIFF_SUMAASEGURADASEGTRAMOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.URPRIMAANUALINPUT))!=TRIM(UPPER(UAT.URPRIMAANUALINPUT)) THEN 1 ELSE 0 END) AS DIFF_URPRIMAANUALINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.URPRIMAFPINPUT))!=TRIM(UPPER(UAT.URPRIMAFPINPUT)) THEN 1 ELSE 0 END) AS DIFF_URPRIMAFPINPUT
,SUM(CASE WHEN PROD.FECHA_INICIO_UND_RIESGO!=UAT.FECHA_INICIO_UND_RIESGO THEN 1 ELSE 0 END) AS DIFF_FECHA_INICIO_UND_RIESGO
,SUM(CASE WHEN PROD.FECHA_FIN_UND_RIESGO!=UAT.FECHA_FIN_UND_RIESGO THEN 1 ELSE 0 END) AS DIFF_FECHA_FIN_UND_RIESGO
,SUM(CASE WHEN TRIM(UPPER(PROD.PORCENTAJE_DEVOLUCION_PRIMA))!=TRIM(UPPER(UAT.PORCENTAJE_DEVOLUCION_PRIMA)) THEN 1 ELSE 0 END) AS DIFF_PORCENTAJE_DEVOLUCION_PRIMA
,SUM(CASE WHEN PROD.FECHA_CARGA!=UAT.FECHA_CARGA THEN 1 ELSE 0 END) AS DIFF_FECHA_CARGA
FROM iter-data-storage-pv-uat.acsele_data.TD_OPERACION_UNIDAD_RIESGO_raw UAT 
INNER JOIN interseguro-data.acsele_data.TD_OPERACION_UNIDAD_RIESGO_raw PROD 
ON UAT.NUMERO_POLIZA = PROD.NUMERO_POLIZA 
AND UAT.NUMERO_OPERACION = PROD.NUMERO_OPERACION