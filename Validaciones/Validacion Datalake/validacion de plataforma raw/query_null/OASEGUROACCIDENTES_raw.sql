SELECT SUM(CASE WHEN TRIM(UPPER(PROD.TIPOASEGURADOACCINPUT)) IS NULL AND TRIM(UPPER(UAT.TIPOASEGURADOACCINPUT))="" THEN 1 ELSE 0 END) AS DIFF_TIPOASEGURADOACCINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.TIPOASEGURADOACCVALUE)) IS NULL AND TRIM(UPPER(UAT.TIPOASEGURADOACCVALUE))="" THEN 1 ELSE 0 END) AS DIFF_TIPOASEGURADOACCVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.SEXOURINPUT)) IS NULL AND TRIM(UPPER(UAT.SEXOURINPUT))="" THEN 1 ELSE 0 END) AS DIFF_SEXOURINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.SEXOURVALUE)) IS NULL AND TRIM(UPPER(UAT.SEXOURVALUE))="" THEN 1 ELSE 0 END) AS DIFF_SEXOURVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.OACONTTITULARINPUT)) IS NULL AND TRIM(UPPER(UAT.OACONTTITULARINPUT))="" THEN 1 ELSE 0 END) AS DIFF_OACONTTITULARINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.OACONTTITULARVALUE)) IS NULL AND TRIM(UPPER(UAT.OACONTTITULARVALUE))="" THEN 1 ELSE 0 END) AS DIFF_OACONTTITULARVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADCRONOLOGICAINPUT)) IS NULL AND TRIM(UPPER(UAT.EDADCRONOLOGICAINPUT))="" THEN 1 ELSE 0 END) AS DIFF_EDADCRONOLOGICAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADCRONOLOGICAVALUE)) IS NULL AND TRIM(UPPER(UAT.EDADCRONOLOGICAVALUE))="" THEN 1 ELSE 0 END) AS DIFF_EDADCRONOLOGICAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.TIPOACTIVACIONINPUT)) IS NULL AND TRIM(UPPER(UAT.TIPOACTIVACIONINPUT))="" THEN 1 ELSE 0 END) AS DIFF_TIPOACTIVACIONINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.TIPOACTIVACIONVALUE)) IS NULL AND TRIM(UPPER(UAT.TIPOACTIVACIONVALUE))="" THEN 1 ELSE 0 END) AS DIFF_TIPOACTIVACIONVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.DOCUMENTOIDENTIDADSININPUT)) IS NULL AND TRIM(UPPER(UAT.DOCUMENTOIDENTIDADSININPUT))="" THEN 1 ELSE 0 END) AS DIFF_DOCUMENTOIDENTIDADSININPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.DOCUMENTOIDENTIDADSINVALUE)) IS NULL AND TRIM(UPPER(UAT.DOCUMENTOIDENTIDADSINVALUE))="" THEN 1 ELSE 0 END) AS DIFF_DOCUMENTOIDENTIDADSINVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHANACIMIENTOSININPUT)) IS NULL AND TRIM(UPPER(UAT.FECHANACIMIENTOSININPUT))="" THEN 1 ELSE 0 END) AS DIFF_FECHANACIMIENTOSININPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHANACIMIENTOSINVALUE)) IS NULL AND TRIM(UPPER(UAT.FECHANACIMIENTOSINVALUE))="" THEN 1 ELSE 0 END) AS DIFF_FECHANACIMIENTOSINVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADMINIMAASEGINPUT)) IS NULL AND TRIM(UPPER(UAT.EDADMINIMAASEGINPUT))="" THEN 1 ELSE 0 END) AS DIFF_EDADMINIMAASEGINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADMINIMAASEGVALUE)) IS NULL AND TRIM(UPPER(UAT.EDADMINIMAASEGVALUE))="" THEN 1 ELSE 0 END) AS DIFF_EDADMINIMAASEGVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADMAXIMAASEGINPUT)) IS NULL AND TRIM(UPPER(UAT.EDADMAXIMAASEGINPUT))="" THEN 1 ELSE 0 END) AS DIFF_EDADMAXIMAASEGINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADMAXIMAASEGVALUE)) IS NULL AND TRIM(UPPER(UAT.EDADMAXIMAASEGVALUE))="" THEN 1 ELSE 0 END) AS DIFF_EDADMAXIMAASEGVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADPERMANASEGINPUT)) IS NULL AND TRIM(UPPER(UAT.EDADPERMANASEGINPUT))="" THEN 1 ELSE 0 END) AS DIFF_EDADPERMANASEGINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADPERMANASEGVALUE)) IS NULL AND TRIM(UPPER(UAT.EDADPERMANASEGVALUE))="" THEN 1 ELSE 0 END) AS DIFF_EDADPERMANASEGVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CUMULOFALLECIMIENTOACCINPUT)) IS NULL AND TRIM(UPPER(UAT.CUMULOFALLECIMIENTOACCINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CUMULOFALLECIMIENTOACCINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CUMULOFALLECIMIENTOACCVALUE)) IS NULL AND TRIM(UPPER(UAT.CUMULOFALLECIMIENTOACCVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CUMULOFALLECIMIENTOACCVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.DIRECCIONASEGURADOINPUT)) IS NULL AND TRIM(UPPER(UAT.DIRECCIONASEGURADOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_DIRECCIONASEGURADOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.DIRECCIONASEGURADOVALUE)) IS NULL AND TRIM(UPPER(UAT.DIRECCIONASEGURADOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_DIRECCIONASEGURADOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.TELEFONOASEGURADOINPUT)) IS NULL AND TRIM(UPPER(UAT.TELEFONOASEGURADOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_TELEFONOASEGURADOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.TELEFONOASEGURADOVALUE)) IS NULL AND TRIM(UPPER(UAT.TELEFONOASEGURADOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_TELEFONOASEGURADOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.FAXASEGURADOINPUT)) IS NULL AND TRIM(UPPER(UAT.FAXASEGURADOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_FAXASEGURADOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FAXASEGURADOVALUE)) IS NULL AND TRIM(UPPER(UAT.FAXASEGURADOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_FAXASEGURADOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.EMAILASEGURADOINPUT)) IS NULL AND TRIM(UPPER(UAT.EMAILASEGURADOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_EMAILASEGURADOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.EMAILASEGURADOVALUE)) IS NULL AND TRIM(UPPER(UAT.EMAILASEGURADOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_EMAILASEGURADOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CODDEPARTASEGURADOINPUT)) IS NULL AND TRIM(UPPER(UAT.CODDEPARTASEGURADOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CODDEPARTASEGURADOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CODDEPARTASEGURADOVALUE)) IS NULL AND TRIM(UPPER(UAT.CODDEPARTASEGURADOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CODDEPARTASEGURADOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CODPROVINASEGURADOINPUT)) IS NULL AND TRIM(UPPER(UAT.CODPROVINASEGURADOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CODPROVINASEGURADOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CODPROVINASEGURADOVALUE)) IS NULL AND TRIM(UPPER(UAT.CODPROVINASEGURADOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CODPROVINASEGURADOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CODDISTRIASEGURADOINPUT)) IS NULL AND TRIM(UPPER(UAT.CODDISTRIASEGURADOINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CODDISTRIASEGURADOINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CODDISTRIASEGURADOVALUE)) IS NULL AND TRIM(UPPER(UAT.CODDISTRIASEGURADOVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CODDISTRIASEGURADOVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CAPITALASEGFALLECACCINPUT)) IS NULL AND TRIM(UPPER(UAT.CAPITALASEGFALLECACCINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CAPITALASEGFALLECACCINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CAPITALASEGFALLECACCVALUE)) IS NULL AND TRIM(UPPER(UAT.CAPITALASEGFALLECACCVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CAPITALASEGFALLECACCVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.TASAANUALFALLECACCINPUT)) IS NULL AND TRIM(UPPER(UAT.TASAANUALFALLECACCINPUT))="" THEN 1 ELSE 0 END) AS DIFF_TASAANUALFALLECACCINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.TASAANUALFALLECACCVALUE)) IS NULL AND TRIM(UPPER(UAT.TASAANUALFALLECACCVALUE))="" THEN 1 ELSE 0 END) AS DIFF_TASAANUALFALLECACCVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.PRIMAANUALFALLECACCINPUT)) IS NULL AND TRIM(UPPER(UAT.PRIMAANUALFALLECACCINPUT))="" THEN 1 ELSE 0 END) AS DIFF_PRIMAANUALFALLECACCINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.PRIMAANUALFALLECACCVALUE)) IS NULL AND TRIM(UPPER(UAT.PRIMAANUALFALLECACCVALUE))="" THEN 1 ELSE 0 END) AS DIFF_PRIMAANUALFALLECACCVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.PLAZOVIGENCIAINPUT)) IS NULL AND TRIM(UPPER(UAT.PLAZOVIGENCIAINPUT))="" THEN 1 ELSE 0 END) AS DIFF_PLAZOVIGENCIAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.PLAZOVIGENCIAVALUE)) IS NULL AND TRIM(UPPER(UAT.PLAZOVIGENCIAVALUE))="" THEN 1 ELSE 0 END) AS DIFF_PLAZOVIGENCIAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHANACIMIENTOCOTINPUT)) IS NULL AND TRIM(UPPER(UAT.FECHANACIMIENTOCOTINPUT))="" THEN 1 ELSE 0 END) AS DIFF_FECHANACIMIENTOCOTINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.FECHANACIMIENTOCOTVALUE)) IS NULL AND TRIM(UPPER(UAT.FECHANACIMIENTOCOTVALUE))="" THEN 1 ELSE 0 END) AS DIFF_FECHANACIMIENTOCOTVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.SEXOCOTINPUT)) IS NULL AND TRIM(UPPER(UAT.SEXOCOTINPUT))="" THEN 1 ELSE 0 END) AS DIFF_SEXOCOTINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.SEXOCOTVALUE)) IS NULL AND TRIM(UPPER(UAT.SEXOCOTVALUE))="" THEN 1 ELSE 0 END) AS DIFF_SEXOCOTVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CONDICIONFUMADORCOTINPUT)) IS NULL AND TRIM(UPPER(UAT.CONDICIONFUMADORCOTINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CONDICIONFUMADORCOTINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CONDICIONFUMADORCOTVALUE)) IS NULL AND TRIM(UPPER(UAT.CONDICIONFUMADORCOTVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CONDICIONFUMADORCOTVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMOACOTINPUT)) IS NULL AND TRIM(UPPER(UAT.NUMOACOTINPUT))="" THEN 1 ELSE 0 END) AS DIFF_NUMOACOTINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.NUMOACOTVALUE)) IS NULL AND TRIM(UPPER(UAT.NUMOACOTVALUE))="" THEN 1 ELSE 0 END) AS DIFF_NUMOACOTVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.REASEGCUMULOFALLECACCINPUT)) IS NULL AND TRIM(UPPER(UAT.REASEGCUMULOFALLECACCINPUT))="" THEN 1 ELSE 0 END) AS DIFF_REASEGCUMULOFALLECACCINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.REASEGCUMULOFALLECACCVALUE)) IS NULL AND TRIM(UPPER(UAT.REASEGCUMULOFALLECACCVALUE))="" THEN 1 ELSE 0 END) AS DIFF_REASEGCUMULOFALLECACCVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.COMUNICACIONGENASEGINPUT)) IS NULL AND TRIM(UPPER(UAT.COMUNICACIONGENASEGINPUT))="" THEN 1 ELSE 0 END) AS DIFF_COMUNICACIONGENASEGINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.COMUNICACIONGENASEGVALUE)) IS NULL AND TRIM(UPPER(UAT.COMUNICACIONGENASEGVALUE))="" THEN 1 ELSE 0 END) AS DIFF_COMUNICACIONGENASEGVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CORREOIINPUT)) IS NULL AND TRIM(UPPER(UAT.CORREOIINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CORREOIINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CORREOIVALUE)) IS NULL AND TRIM(UPPER(UAT.CORREOIVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CORREOIVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CORREOIIINPUT)) IS NULL AND TRIM(UPPER(UAT.CORREOIIINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CORREOIIINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CORREOIIVALUE)) IS NULL AND TRIM(UPPER(UAT.CORREOIIVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CORREOIIVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CORREOIIIINPUT)) IS NULL AND TRIM(UPPER(UAT.CORREOIIIINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CORREOIIIINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CORREOIIIVALUE)) IS NULL AND TRIM(UPPER(UAT.CORREOIIIVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CORREOIIIVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.TELEFONOIINPUT)) IS NULL AND TRIM(UPPER(UAT.TELEFONOIINPUT))="" THEN 1 ELSE 0 END) AS DIFF_TELEFONOIINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.TELEFONOIVALUE)) IS NULL AND TRIM(UPPER(UAT.TELEFONOIVALUE))="" THEN 1 ELSE 0 END) AS DIFF_TELEFONOIVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.TELEFONOIIINPUT)) IS NULL AND TRIM(UPPER(UAT.TELEFONOIIINPUT))="" THEN 1 ELSE 0 END) AS DIFF_TELEFONOIIINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.TELEFONOIIVALUE)) IS NULL AND TRIM(UPPER(UAT.TELEFONOIIVALUE))="" THEN 1 ELSE 0 END) AS DIFF_TELEFONOIIVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.TELEFONOIIIINPUT)) IS NULL AND TRIM(UPPER(UAT.TELEFONOIIIINPUT))="" THEN 1 ELSE 0 END) AS DIFF_TELEFONOIIIINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.TELEFONOIIIVALUE)) IS NULL AND TRIM(UPPER(UAT.TELEFONOIIIVALUE))="" THEN 1 ELSE 0 END) AS DIFF_TELEFONOIIIVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.COMUNICACIONPOLASEGINPUT)) IS NULL AND TRIM(UPPER(UAT.COMUNICACIONPOLASEGINPUT))="" THEN 1 ELSE 0 END) AS DIFF_COMUNICACIONPOLASEGINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.COMUNICACIONPOLASEGVALUE)) IS NULL AND TRIM(UPPER(UAT.COMUNICACIONPOLASEGVALUE))="" THEN 1 ELSE 0 END) AS DIFF_COMUNICACIONPOLASEGVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.COMUNICACIONENASEGINPUT)) IS NULL AND TRIM(UPPER(UAT.COMUNICACIONENASEGINPUT))="" THEN 1 ELSE 0 END) AS DIFF_COMUNICACIONENASEGINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.COMUNICACIONENASEGVALUE)) IS NULL AND TRIM(UPPER(UAT.COMUNICACIONENASEGVALUE))="" THEN 1 ELSE 0 END) AS DIFF_COMUNICACIONENASEGVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CAPITALASEGFALLACCTRINPUT)) IS NULL AND TRIM(UPPER(UAT.CAPITALASEGFALLACCTRINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CAPITALASEGFALLACCTRINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CAPITALASEGFALLACCTRVALUE)) IS NULL AND TRIM(UPPER(UAT.CAPITALASEGFALLACCTRVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CAPITALASEGFALLACCTRVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CAPITALASEGINVACCTPINPUT)) IS NULL AND TRIM(UPPER(UAT.CAPITALASEGINVACCTPINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CAPITALASEGINVACCTPINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CAPITALASEGINVACCTPVALUE)) IS NULL AND TRIM(UPPER(UAT.CAPITALASEGINVACCTPVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CAPITALASEGINVACCTPVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.TASAANUALFALLECACCTRAINPUT)) IS NULL AND TRIM(UPPER(UAT.TASAANUALFALLECACCTRAINPUT))="" THEN 1 ELSE 0 END) AS DIFF_TASAANUALFALLECACCTRAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.TASAANUALFALLECACCTRAVALUE)) IS NULL AND TRIM(UPPER(UAT.TASAANUALFALLECACCTRAVALUE))="" THEN 1 ELSE 0 END) AS DIFF_TASAANUALFALLECACCTRAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.TASAANUALINVACCTOTPARINPUT)) IS NULL AND TRIM(UPPER(UAT.TASAANUALINVACCTOTPARINPUT))="" THEN 1 ELSE 0 END) AS DIFF_TASAANUALINVACCTOTPARINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.TASAANUALINVACCTOTPARVALUE)) IS NULL AND TRIM(UPPER(UAT.TASAANUALINVACCTOTPARVALUE))="" THEN 1 ELSE 0 END) AS DIFF_TASAANUALINVACCTOTPARVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADMINIMAASEGACCTRINPUT)) IS NULL AND TRIM(UPPER(UAT.EDADMINIMAASEGACCTRINPUT))="" THEN 1 ELSE 0 END) AS DIFF_EDADMINIMAASEGACCTRINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADMINIMAASEGACCTRVALUE)) IS NULL AND TRIM(UPPER(UAT.EDADMINIMAASEGACCTRVALUE))="" THEN 1 ELSE 0 END) AS DIFF_EDADMINIMAASEGACCTRVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADMAXIMAASEGACCTRINPUT)) IS NULL AND TRIM(UPPER(UAT.EDADMAXIMAASEGACCTRINPUT))="" THEN 1 ELSE 0 END) AS DIFF_EDADMAXIMAASEGACCTRINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADMAXIMAASEGACCTRVALUE)) IS NULL AND TRIM(UPPER(UAT.EDADMAXIMAASEGACCTRVALUE))="" THEN 1 ELSE 0 END) AS DIFF_EDADMAXIMAASEGACCTRVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADPERMANASEGACCTRINPUT)) IS NULL AND TRIM(UPPER(UAT.EDADPERMANASEGACCTRINPUT))="" THEN 1 ELSE 0 END) AS DIFF_EDADPERMANASEGACCTRINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADPERMANASEGACCTRVALUE)) IS NULL AND TRIM(UPPER(UAT.EDADPERMANASEGACCTRVALUE))="" THEN 1 ELSE 0 END) AS DIFF_EDADPERMANASEGACCTRVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADPERMANASEGINVACCTPINPUT)) IS NULL AND TRIM(UPPER(UAT.EDADPERMANASEGINVACCTPINPUT))="" THEN 1 ELSE 0 END) AS DIFF_EDADPERMANASEGINVACCTPINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADPERMANASEGINVACCTPVALUE)) IS NULL AND TRIM(UPPER(UAT.EDADPERMANASEGINVACCTPVALUE))="" THEN 1 ELSE 0 END) AS DIFF_EDADPERMANASEGINVACCTPVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADMAXIMAASEGINVACCTPINPUT)) IS NULL AND TRIM(UPPER(UAT.EDADMAXIMAASEGINVACCTPINPUT))="" THEN 1 ELSE 0 END) AS DIFF_EDADMAXIMAASEGINVACCTPINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADMAXIMAASEGINVACCTPVALUE)) IS NULL AND TRIM(UPPER(UAT.EDADMAXIMAASEGINVACCTPVALUE))="" THEN 1 ELSE 0 END) AS DIFF_EDADMAXIMAASEGINVACCTPVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADMINIMAASEGINVACCTPINPUT)) IS NULL AND TRIM(UPPER(UAT.EDADMINIMAASEGINVACCTPINPUT))="" THEN 1 ELSE 0 END) AS DIFF_EDADMINIMAASEGINVACCTPINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.EDADMINIMAASEGINVACCTPVALUE)) IS NULL AND TRIM(UPPER(UAT.EDADMINIMAASEGINVACCTPVALUE))="" THEN 1 ELSE 0 END) AS DIFF_EDADMINIMAASEGINVACCTPVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.PRIMAANUALFALLECACCTRINPUT)) IS NULL AND TRIM(UPPER(UAT.PRIMAANUALFALLECACCTRINPUT))="" THEN 1 ELSE 0 END) AS DIFF_PRIMAANUALFALLECACCTRINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.PRIMAANUALFALLECACCTRVALUE)) IS NULL AND TRIM(UPPER(UAT.PRIMAANUALFALLECACCTRVALUE))="" THEN 1 ELSE 0 END) AS DIFF_PRIMAANUALFALLECACCTRVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.PRIMAANUALINVACCTOTPAINPUT)) IS NULL AND TRIM(UPPER(UAT.PRIMAANUALINVACCTOTPAINPUT))="" THEN 1 ELSE 0 END) AS DIFF_PRIMAANUALINVACCTOTPAINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.PRIMAANUALINVACCTOTPAVALUE)) IS NULL AND TRIM(UPPER(UAT.PRIMAANUALINVACCTOTPAVALUE))="" THEN 1 ELSE 0 END) AS DIFF_PRIMAANUALINVACCTOTPAVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.REASEGCUMULOFALLACCTRINPUT)) IS NULL AND TRIM(UPPER(UAT.REASEGCUMULOFALLACCTRINPUT))="" THEN 1 ELSE 0 END) AS DIFF_REASEGCUMULOFALLACCTRINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.REASEGCUMULOFALLACCTRVALUE)) IS NULL AND TRIM(UPPER(UAT.REASEGCUMULOFALLACCTRVALUE))="" THEN 1 ELSE 0 END) AS DIFF_REASEGCUMULOFALLACCTRVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.REASEGCUMULOINVACCTPINPUT)) IS NULL AND TRIM(UPPER(UAT.REASEGCUMULOINVACCTPINPUT))="" THEN 1 ELSE 0 END) AS DIFF_REASEGCUMULOINVACCTPINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.REASEGCUMULOINVACCTPVALUE)) IS NULL AND TRIM(UPPER(UAT.REASEGCUMULOINVACCTPVALUE))="" THEN 1 ELSE 0 END) AS DIFF_REASEGCUMULOINVACCTPVALUE
,SUM(CASE WHEN TRIM(UPPER(PROD.CONTRATANTECODIDENANTINPUT)) IS NULL AND TRIM(UPPER(UAT.CONTRATANTECODIDENANTINPUT))="" THEN 1 ELSE 0 END) AS DIFF_CONTRATANTECODIDENANTINPUT
,SUM(CASE WHEN TRIM(UPPER(PROD.CONTRATANTECODIDENANTVALUE)) IS NULL AND TRIM(UPPER(UAT.CONTRATANTECODIDENANTVALUE))="" THEN 1 ELSE 0 END) AS DIFF_CONTRATANTECODIDENANTVALUE
FROM iter-data-storage-pv-uat.acsele_data.OASEGUROACCIDENTES_raw UAT 
INNER JOIN interseguro-data.acsele_data.OASEGUROACCIDENTES_raw PROD 
ON UAT.PK = PROD.PK