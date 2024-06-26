SELECT SUM(CASE WHEN TRIM(UPPER(PROD.NUMEROCASOSININPUT)) IS NULL AND TRIM(UPPER(UAT.NUMEROCASOSININPUT))="" THEN 1 ELSE 0 END) AS DIFF_NUMEROCASOSININPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMEROCASOSINVALUE)) IS NULL AND TRIM(UPPER(UAT.NUMEROCASOSINVALUE))="" THEN 1 ELSE 0 END) AS DIFF_NUMEROCASOSINVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAOCURRENCIAINPUT)) IS NULL AND TRIM(UPPER(UAT.FECHAOCURRENCIAINPUT))="" THEN 1 ELSE 0 END) AS DIFF_FECHAOCURRENCIAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAOCURRENCIAVALUE)) IS NULL AND TRIM(UPPER(UAT.FECHAOCURRENCIAVALUE))="" THEN 1 ELSE 0 END) AS DIFF_FECHAOCURRENCIAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.HORAOCURRENCIASOATINPUT)) IS NULL AND TRIM(UPPER(UAT.HORAOCURRENCIASOATINPUT))="" THEN 1 ELSE 0 END) AS DIFF_HORAOCURRENCIASOATINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.HORAOCURRENCIASOATVALUE)) IS NULL AND TRIM(UPPER(UAT.HORAOCURRENCIASOATVALUE))="" THEN 1 ELSE 0 END) AS DIFF_HORAOCURRENCIASOATVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.LUGAROCURRENCIAVALUE)) IS NULL AND TRIM(UPPER(UAT.LUGAROCURRENCIAVALUE))="" THEN 1 ELSE 0 END) AS DIFF_LUGAROCURRENCIAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CODDEPARTAMENTOSOATINPUT)) IS NULL AND TRIM(UPPER(UAT.CODDEPARTAMENTOSOATINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CODDEPARTAMENTOSOATINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CODDEPARTAMENTOSOATVALUE)) IS NULL AND TRIM(UPPER(UAT.CODDEPARTAMENTOSOATVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CODDEPARTAMENTOSOATVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CODPROVINCIASOATINPUT)) IS NULL AND TRIM(UPPER(UAT.CODPROVINCIASOATINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CODPROVINCIASOATINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CODPROVINCIASOATVALUE)) IS NULL AND TRIM(UPPER(UAT.CODPROVINCIASOATVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CODPROVINCIASOATVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CODDISTRITOSOATINPUT)) IS NULL AND TRIM(UPPER(UAT.CODDISTRITOSOATINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CODDISTRITOSOATINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CODDISTRITOSOATVALUE)) IS NULL AND TRIM(UPPER(UAT.CODDISTRITOSOATVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CODDISTRITOSOATVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHANOTIFICACIONINPUT)) IS NULL AND TRIM(UPPER(UAT.FECHANOTIFICACIONINPUT))="" THEN 1 ELSE 0 END) AS DIFF_FECHANOTIFICACIONINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHANOTIFICACIONVALUE)) IS NULL AND TRIM(UPPER(UAT.FECHANOTIFICACIONVALUE))="" THEN 1 ELSE 0 END) AS DIFF_FECHANOTIFICACIONVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.HORANOTIFICACIONINPUT)) IS NULL AND TRIM(UPPER(UAT.HORANOTIFICACIONINPUT))="" THEN 1 ELSE 0 END) AS DIFF_HORANOTIFICACIONINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.HORANOTIFICACIONVALUE)) IS NULL AND TRIM(UPPER(UAT.HORANOTIFICACIONVALUE))="" THEN 1 ELSE 0 END) AS DIFF_HORANOTIFICACIONVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.COMISARIAINPUT)) IS NULL AND TRIM(UPPER(UAT.COMISARIAINPUT))="" THEN 1 ELSE 0 END) AS DIFF_COMISARIAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.COMISARIAVALUE)) IS NULL AND TRIM(UPPER(UAT.COMISARIAVALUE))="" THEN 1 ELSE 0 END) AS DIFF_COMISARIAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CAUSASINIESTROSOATINPUT)) IS NULL AND TRIM(UPPER(UAT.CAUSASINIESTROSOATINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CAUSASINIESTROSOATINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CAUSASINIESTROSOATVALUE)) IS NULL AND TRIM(UPPER(UAT.CAUSASINIESTROSOATVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CAUSASINIESTROSOATVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.PLACASININPUT)) IS NULL AND TRIM(UPPER(UAT.PLACASININPUT))="" THEN 1 ELSE 0 END) AS DIFF_PLACASININPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.PLACASINVALUE)) IS NULL AND TRIM(UPPER(UAT.PLACASINVALUE))="" THEN 1 ELSE 0 END) AS DIFF_PLACASINVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.USOSININPUT)) IS NULL AND TRIM(UPPER(UAT.USOSININPUT))="" THEN 1 ELSE 0 END) AS DIFF_USOSININPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.USOSINVALUE)) IS NULL AND TRIM(UPPER(UAT.USOSINVALUE))="" THEN 1 ELSE 0 END) AS DIFF_USOSINVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.MARCASININPUT)) IS NULL AND TRIM(UPPER(UAT.MARCASININPUT))="" THEN 1 ELSE 0 END) AS DIFF_MARCASININPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.MARCASINVALUE)) IS NULL AND TRIM(UPPER(UAT.MARCASINVALUE))="" THEN 1 ELSE 0 END) AS DIFF_MARCASINVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.MODELOSININPUT)) IS NULL AND TRIM(UPPER(UAT.MODELOSININPUT))="" THEN 1 ELSE 0 END) AS DIFF_MODELOSININPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.MODELOSINVALUE)) IS NULL AND TRIM(UPPER(UAT.MODELOSINVALUE))="" THEN 1 ELSE 0 END) AS DIFF_MODELOSINVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.APEPATERNOCONDSOATINPUT)) IS NULL AND TRIM(UPPER(UAT.APEPATERNOCONDSOATINPUT))="" THEN 1 ELSE 0 END) AS DIFF_APEPATERNOCONDSOATINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.APEPATERNOCONDSOATVALUE)) IS NULL AND TRIM(UPPER(UAT.APEPATERNOCONDSOATVALUE))="" THEN 1 ELSE 0 END) AS DIFF_APEPATERNOCONDSOATVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.APEMATERNOCONDSOATINPUT)) IS NULL AND TRIM(UPPER(UAT.APEMATERNOCONDSOATINPUT))="" THEN 1 ELSE 0 END) AS DIFF_APEMATERNOCONDSOATINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.APEMATERNOCONDSOATVALUE)) IS NULL AND TRIM(UPPER(UAT.APEMATERNOCONDSOATVALUE))="" THEN 1 ELSE 0 END) AS DIFF_APEMATERNOCONDSOATVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.NOMBRESCONDSOATINPUT)) IS NULL AND TRIM(UPPER(UAT.NOMBRESCONDSOATINPUT))="" THEN 1 ELSE 0 END) AS DIFF_NOMBRESCONDSOATINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NOMBRESCONDSOATVALUE)) IS NULL AND TRIM(UPPER(UAT.NOMBRESCONDSOATVALUE))="" THEN 1 ELSE 0 END) AS DIFF_NOMBRESCONDSOATVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.LICENCIACONDUCTORINPUT)) IS NULL AND TRIM(UPPER(UAT.LICENCIACONDUCTORINPUT))="" THEN 1 ELSE 0 END) AS DIFF_LICENCIACONDUCTORINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.LICENCIACONDUCTORVALUE)) IS NULL AND TRIM(UPPER(UAT.LICENCIACONDUCTORVALUE))="" THEN 1 ELSE 0 END) AS DIFF_LICENCIACONDUCTORVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMEROCONTACTOINPUT)) IS NULL AND TRIM(UPPER(UAT.NUMEROCONTACTOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_NUMEROCONTACTOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMEROCONTACTOVALUE)) IS NULL AND TRIM(UPPER(UAT.NUMEROCONTACTOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_NUMEROCONTACTOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.APEPATERNOLESIONADOINPUT)) IS NULL AND TRIM(UPPER(UAT.APEPATERNOLESIONADOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_APEPATERNOLESIONADOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.APEPATERNOLESIONADOVALUE)) IS NULL AND TRIM(UPPER(UAT.APEPATERNOLESIONADOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_APEPATERNOLESIONADOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.APEMATERNOLESIONADOINPUT)) IS NULL AND TRIM(UPPER(UAT.APEMATERNOLESIONADOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_APEMATERNOLESIONADOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.APEMATERNOLESIONADOVALUE)) IS NULL AND TRIM(UPPER(UAT.APEMATERNOLESIONADOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_APEMATERNOLESIONADOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.NOMBRELESIONADOINPUT)) IS NULL AND TRIM(UPPER(UAT.NOMBRELESIONADOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_NOMBRELESIONADOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NOMBRELESIONADOVALUE)) IS NULL AND TRIM(UPPER(UAT.NOMBRELESIONADOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_NOMBRELESIONADOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.DNILESIONADOINPUT)) IS NULL AND TRIM(UPPER(UAT.DNILESIONADOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_DNILESIONADOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.DNILESIONADOVALUE)) IS NULL AND TRIM(UPPER(UAT.DNILESIONADOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_DNILESIONADOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMEROACCIDENTADOSINPUT)) IS NULL AND TRIM(UPPER(UAT.NUMEROACCIDENTADOSINPUT))="" THEN 1 ELSE 0 END) AS DIFF_NUMEROACCIDENTADOSINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMEROACCIDENTADOSVALUE)) IS NULL AND TRIM(UPPER(UAT.NUMEROACCIDENTADOSVALUE))="" THEN 1 ELSE 0 END) AS DIFF_NUMEROACCIDENTADOSVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CAUSAINVALIDEZSOATINPUT)) IS NULL AND TRIM(UPPER(UAT.CAUSAINVALIDEZSOATINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CAUSAINVALIDEZSOATINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CAUSAINVALIDEZSOATVALUE)) IS NULL AND TRIM(UPPER(UAT.CAUSAINVALIDEZSOATVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CAUSAINVALIDEZSOATVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.PORCINVALIDEZSOATINPUT)) IS NULL AND TRIM(UPPER(UAT.PORCINVALIDEZSOATINPUT))="" THEN 1 ELSE 0 END) AS DIFF_PORCINVALIDEZSOATINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.PORCINVALIDEZSOATVALUE)) IS NULL AND TRIM(UPPER(UAT.PORCINVALIDEZSOATVALUE))="" THEN 1 ELSE 0 END) AS DIFF_PORCINVALIDEZSOATVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.INDICADORINCAPACIDADINPUT)) IS NULL AND TRIM(UPPER(UAT.INDICADORINCAPACIDADINPUT))="" THEN 1 ELSE 0 END) AS DIFF_INDICADORINCAPACIDADINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.INDICADORINCAPACIDADVALUE)) IS NULL AND TRIM(UPPER(UAT.INDICADORINCAPACIDADVALUE))="" THEN 1 ELSE 0 END) AS DIFF_INDICADORINCAPACIDADVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAINICIOINCAPACIDADINPUT)) IS NULL AND TRIM(UPPER(UAT.FECHAINICIOINCAPACIDADINPUT))="" THEN 1 ELSE 0 END) AS DIFF_FECHAINICIOINCAPACIDADINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAINICIOINCAPACIDADVALUE)) IS NULL AND TRIM(UPPER(UAT.FECHAINICIOINCAPACIDADVALUE))="" THEN 1 ELSE 0 END) AS DIFF_FECHAINICIOINCAPACIDADVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAFINALINCAPACIDADINPUT)) IS NULL AND TRIM(UPPER(UAT.FECHAFINALINCAPACIDADINPUT))="" THEN 1 ELSE 0 END) AS DIFF_FECHAFINALINCAPACIDADINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAFINALINCAPACIDADVALUE)) IS NULL AND TRIM(UPPER(UAT.FECHAFINALINCAPACIDADVALUE))="" THEN 1 ELSE 0 END) AS DIFF_FECHAFINALINCAPACIDADVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.DIASINCAPACIDADINPUT)) IS NULL AND TRIM(UPPER(UAT.DIASINCAPACIDADINPUT))="" THEN 1 ELSE 0 END) AS DIFF_DIASINCAPACIDADINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.DIASINCAPACIDADVALUE)) IS NULL AND TRIM(UPPER(UAT.DIASINCAPACIDADVALUE))="" THEN 1 ELSE 0 END) AS DIFF_DIASINCAPACIDADVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAFINALCALCULADAINPUT)) IS NULL AND TRIM(UPPER(UAT.FECHAFINALCALCULADAINPUT))="" THEN 1 ELSE 0 END) AS DIFF_FECHAFINALCALCULADAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAFINALCALCULADAVALUE)) IS NULL AND TRIM(UPPER(UAT.FECHAFINALCALCULADAVALUE))="" THEN 1 ELSE 0 END) AS DIFF_FECHAFINALCALCULADAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.DIASINCAPCALCULADOSINPUT)) IS NULL AND TRIM(UPPER(UAT.DIASINCAPCALCULADOSINPUT))="" THEN 1 ELSE 0 END) AS DIFF_DIASINCAPCALCULADOSINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.DIASINCAPCALCULADOSVALUE)) IS NULL AND TRIM(UPPER(UAT.DIASINCAPCALCULADOSVALUE))="" THEN 1 ELSE 0 END) AS DIFF_DIASINCAPCALCULADOSVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.INDICADORFALLECIMIENTOINPUT)) IS NULL AND TRIM(UPPER(UAT.INDICADORFALLECIMIENTOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_INDICADORFALLECIMIENTOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.INDICADORFALLECIMIENTOVALUE)) IS NULL AND TRIM(UPPER(UAT.INDICADORFALLECIMIENTOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_INDICADORFALLECIMIENTOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAFALLECIMIENTOSOATINPUT)) IS NULL AND TRIM(UPPER(UAT.FECHAFALLECIMIENTOSOATINPUT))="" THEN 1 ELSE 0 END) AS DIFF_FECHAFALLECIMIENTOSOATINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAFALLECIMIENTOSOATVALUE)) IS NULL AND TRIM(UPPER(UAT.FECHAFALLECIMIENTOSOATVALUE))="" THEN 1 ELSE 0 END) AS DIFF_FECHAFALLECIMIENTOSOATVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.OBSERVACIONESSOATVALUE)) IS NULL AND TRIM(UPPER(UAT.OBSERVACIONESSOATVALUE))="" THEN 1 ELSE 0 END) AS DIFF_OBSERVACIONESSOATVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.ANODOCINPUT)) IS NULL AND TRIM(UPPER(UAT.ANODOCINPUT))="" THEN 1 ELSE 0 END) AS DIFF_ANODOCINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.ANODOCVALUE)) IS NULL AND TRIM(UPPER(UAT.ANODOCVALUE))="" THEN 1 ELSE 0 END) AS DIFF_ANODOCVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CODDEPARTAMENTOETIQSININPUT)) IS NULL AND TRIM(UPPER(UAT.CODDEPARTAMENTOETIQSININPUT))="" THEN 1 ELSE 0 END) AS DIFF_CODDEPARTAMENTOETIQSININPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CODDEPARTAMENTOETIQSINVALUE)) IS NULL AND TRIM(UPPER(UAT.CODDEPARTAMENTOETIQSINVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CODDEPARTAMENTOETIQSINVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.ETIQUETADEPARTSININPUT)) IS NULL AND TRIM(UPPER(UAT.ETIQUETADEPARTSININPUT))="" THEN 1 ELSE 0 END) AS DIFF_ETIQUETADEPARTSININPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.ETIQUETADEPARTSINVALUE)) IS NULL AND TRIM(UPPER(UAT.ETIQUETADEPARTSINVALUE))="" THEN 1 ELSE 0 END) AS DIFF_ETIQUETADEPARTSINVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.INDICADORINVALIDEZINPUT)) IS NULL AND TRIM(UPPER(UAT.INDICADORINVALIDEZINPUT))="" THEN 1 ELSE 0 END) AS DIFF_INDICADORINVALIDEZINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.INDICADORINVALIDEZVALUE)) IS NULL AND TRIM(UPPER(UAT.INDICADORINVALIDEZVALUE))="" THEN 1 ELSE 0 END) AS DIFF_INDICADORINVALIDEZVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAINVALIDEZINPUT)) IS NULL AND TRIM(UPPER(UAT.FECHAINVALIDEZINPUT))="" THEN 1 ELSE 0 END) AS DIFF_FECHAINVALIDEZINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHAINVALIDEZVALUE)) IS NULL AND TRIM(UPPER(UAT.FECHAINVALIDEZVALUE))="" THEN 1 ELSE 0 END) AS DIFF_FECHAINVALIDEZVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.ANOFALLECDOCINPUT)) IS NULL AND TRIM(UPPER(UAT.ANOFALLECDOCINPUT))="" THEN 1 ELSE 0 END) AS DIFF_ANOFALLECDOCINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.ANOFALLECDOCVALUE)) IS NULL AND TRIM(UPPER(UAT.ANOFALLECDOCVALUE))="" THEN 1 ELSE 0 END) AS DIFF_ANOFALLECDOCVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.ANOINVDOCINPUT)) IS NULL AND TRIM(UPPER(UAT.ANOINVDOCINPUT))="" THEN 1 ELSE 0 END) AS DIFF_ANOINVDOCINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.ANOINVDOCVALUE)) IS NULL AND TRIM(UPPER(UAT.ANOINVDOCVALUE))="" THEN 1 ELSE 0 END) AS DIFF_ANOINVDOCVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.LUGAROCURRENCIAINPUT)) IS NULL AND TRIM(UPPER(UAT.LUGAROCURRENCIAINPUT))="" THEN 1 ELSE 0 END) AS DIFF_LUGAROCURRENCIAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.OBSERVACIONESSOATINPUT)) IS NULL AND TRIM(UPPER(UAT.OBSERVACIONESSOATINPUT))="" THEN 1 ELSE 0 END) AS DIFF_OBSERVACIONESSOATINPUT
FROM iter-data-storage-pv-uat.acsele_data.ATROPELLOSIN_raw UAT 
INNER JOIN interseguro-data.acsele_data.ATROPELLOSIN_raw PROD 
ON UAT.PK = PROD.PK