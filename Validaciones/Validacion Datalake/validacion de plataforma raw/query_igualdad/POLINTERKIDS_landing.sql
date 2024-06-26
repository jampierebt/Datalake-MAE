SELECT SUM(CASE WHEN PROD.AUDITDATE!=UAT.AUDITDATE THEN 1 ELSE 0 END) AS DIFF_AUDITDATE
,SUM(CASE WHEN PROD.PK!=UAT.PK THEN 1 ELSE 0 END) AS DIFF_PK
,SUM(CASE WHEN PROD.STATIC!=UAT.STATIC THEN 1 ELSE 0 END) AS DIFF_STATIC
,SUM(CASE WHEN PROD.STATUS!=UAT.STATUS THEN 1 ELSE 0 END) AS DIFF_STATUS
,SUM(CASE WHEN TRIM(UPPER(PROD.CODAGENTIENOFIINPUT))!=TRIM(UPPER(UAT.CODAGENTIENOFIINPUT)) THEN 1 ELSE 0 END) AS DIFF_CODAGENTIENOFIINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CODAGENTIENOFIVALUE))!=TRIM(UPPER(UAT.CODAGENTIENOFIVALUE)) THEN 1 ELSE 0 END) AS DIFF_CODAGENTIENOFIVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CODVENDEDORINPUT))!=TRIM(UPPER(UAT.CODVENDEDORINPUT)) THEN 1 ELSE 0 END) AS DIFF_CODVENDEDORINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CODVENDEDORVALUE))!=TRIM(UPPER(UAT.CODVENDEDORVALUE)) THEN 1 ELSE 0 END) AS DIFF_CODVENDEDORVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.PROVEEDORDIGITINPUT))!=TRIM(UPPER(UAT.PROVEEDORDIGITINPUT)) THEN 1 ELSE 0 END) AS DIFF_PROVEEDORDIGITINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.PROVEEDORDIGITVALUE))!=TRIM(UPPER(UAT.PROVEEDORDIGITVALUE)) THEN 1 ELSE 0 END) AS DIFF_PROVEEDORDIGITVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAANULFUTUROINPUT))!=TRIM(UPPER(UAT.FECHAANULFUTUROINPUT)) THEN 1 ELSE 0 END) AS DIFF_FECHAANULFUTUROINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAANULFUTUROVALUE))!=TRIM(UPPER(UAT.FECHAANULFUTUROVALUE)) THEN 1 ELSE 0 END) AS DIFF_FECHAANULFUTUROVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAVENTAINPUT))!=TRIM(UPPER(UAT.FECHAVENTAINPUT)) THEN 1 ELSE 0 END) AS DIFF_FECHAVENTAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAVENTAVALUE))!=TRIM(UPPER(UAT.FECHAVENTAVALUE)) THEN 1 ELSE 0 END) AS DIFF_FECHAVENTAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CODINTERMEDIARIOINPUT))!=TRIM(UPPER(UAT.CODINTERMEDIARIOINPUT)) THEN 1 ELSE 0 END) AS DIFF_CODINTERMEDIARIOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CODINTERMEDIARIOVALUE))!=TRIM(UPPER(UAT.CODINTERMEDIARIOVALUE)) THEN 1 ELSE 0 END) AS DIFF_CODINTERMEDIARIOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.TASAIKINPUT))!=TRIM(UPPER(UAT.TASAIKINPUT)) THEN 1 ELSE 0 END) AS DIFF_TASAIKINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.TASAIKVALUE))!=TRIM(UPPER(UAT.TASAIKVALUE)) THEN 1 ELSE 0 END) AS DIFF_TASAIKVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.GASADMINCANPINPUT))!=TRIM(UPPER(UAT.GASADMINCANPINPUT)) THEN 1 ELSE 0 END) AS DIFF_GASADMINCANPINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.GASADMINCANPVALUE))!=TRIM(UPPER(UAT.GASADMINCANPVALUE)) THEN 1 ELSE 0 END) AS DIFF_GASADMINCANPVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMPLANINTERLOCFINPUT))!=TRIM(UPPER(UAT.NUMPLANINTERLOCFINPUT)) THEN 1 ELSE 0 END) AS DIFF_NUMPLANINTERLOCFINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMPLANINTERLOCFVALUE))!=TRIM(UPPER(UAT.NUMPLANINTERLOCFVALUE)) THEN 1 ELSE 0 END) AS DIFF_NUMPLANINTERLOCFVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHANACIMIENTOASISTINPUT))!=TRIM(UPPER(UAT.FECHANACIMIENTOASISTINPUT)) THEN 1 ELSE 0 END) AS DIFF_FECHANACIMIENTOASISTINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHANACIMIENTOASISTVALUE))!=TRIM(UPPER(UAT.FECHANACIMIENTOASISTVALUE)) THEN 1 ELSE 0 END) AS DIFF_FECHANACIMIENTOASISTVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.PRIMACALCULADAINPUT))!=TRIM(UPPER(UAT.PRIMACALCULADAINPUT)) THEN 1 ELSE 0 END) AS DIFF_PRIMACALCULADAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.PRIMACALCULADAVALUE))!=TRIM(UPPER(UAT.PRIMACALCULADAVALUE)) THEN 1 ELSE 0 END) AS DIFF_PRIMACALCULADAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.NIVELAGRUPREASEGINPUT))!=TRIM(UPPER(UAT.NIVELAGRUPREASEGINPUT)) THEN 1 ELSE 0 END) AS DIFF_NIVELAGRUPREASEGINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NIVELAGRUPREASEGVALUE))!=TRIM(UPPER(UAT.NIVELAGRUPREASEGVALUE)) THEN 1 ELSE 0 END) AS DIFF_NIVELAGRUPREASEGVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMEROPROPUESTAINPUT))!=TRIM(UPPER(UAT.NUMEROPROPUESTAINPUT)) THEN 1 ELSE 0 END) AS DIFF_NUMEROPROPUESTAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMEROPROPUESTAVALUE))!=TRIM(UPPER(UAT.NUMEROPROPUESTAVALUE)) THEN 1 ELSE 0 END) AS DIFF_NUMEROPROPUESTAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMASEGURADOSINPUT))!=TRIM(UPPER(UAT.NUMASEGURADOSINPUT)) THEN 1 ELSE 0 END) AS DIFF_NUMASEGURADOSINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMASEGURADOSVALUE))!=TRIM(UPPER(UAT.NUMASEGURADOSVALUE)) THEN 1 ELSE 0 END) AS DIFF_NUMASEGURADOSVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.RPRIMANETAINPUT))!=TRIM(UPPER(UAT.RPRIMANETAINPUT)) THEN 1 ELSE 0 END) AS DIFF_RPRIMANETAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.RPRIMANETAVALUE))!=TRIM(UPPER(UAT.RPRIMANETAVALUE)) THEN 1 ELSE 0 END) AS DIFF_RPRIMANETAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.RGASEMISINPUT))!=TRIM(UPPER(UAT.RGASEMISINPUT)) THEN 1 ELSE 0 END) AS DIFF_RGASEMISINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.RGASEMISVALUE))!=TRIM(UPPER(UAT.RGASEMISVALUE)) THEN 1 ELSE 0 END) AS DIFF_RGASEMISVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.RIGVINPUT))!=TRIM(UPPER(UAT.RIGVINPUT)) THEN 1 ELSE 0 END) AS DIFF_RIGVINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.RIGVVALUE))!=TRIM(UPPER(UAT.RIGVVALUE)) THEN 1 ELSE 0 END) AS DIFF_RIGVVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.RPRIMATOTALINPUT))!=TRIM(UPPER(UAT.RPRIMATOTALINPUT)) THEN 1 ELSE 0 END) AS DIFF_RPRIMATOTALINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.RPRIMATOTALVALUE))!=TRIM(UPPER(UAT.RPRIMATOTALVALUE)) THEN 1 ELSE 0 END) AS DIFF_RPRIMATOTALVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMEROCOTIZACIONINPUT))!=TRIM(UPPER(UAT.NUMEROCOTIZACIONINPUT)) THEN 1 ELSE 0 END) AS DIFF_NUMEROCOTIZACIONINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMEROCOTIZACIONVALUE))!=TRIM(UPPER(UAT.NUMEROCOTIZACIONVALUE)) THEN 1 ELSE 0 END) AS DIFF_NUMEROCOTIZACIONVALUE