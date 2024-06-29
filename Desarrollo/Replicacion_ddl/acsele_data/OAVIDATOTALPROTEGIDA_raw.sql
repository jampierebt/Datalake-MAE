CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.OAVIDATOTALPROTEGIDA_raw`
(
  AUDITDATE TIMESTAMP,
  PK NUMERIC,
  STATIC NUMERIC,
  STATUS NUMERIC,
  TIPOCLIENTEINPUT STRING,
  TIPOCLIENTEVALUE STRING,
  GRUPOFAMILIARINPUT STRING,
  GRUPOFAMILIARVALUE STRING,
  TIPOASEGURADOACCINPUT STRING,
  TIPOASEGURADOACCVALUE STRING,
  SEXOURINPUT STRING,
  SEXOURVALUE STRING,
  OACONTTITULARINPUT STRING,
  OACONTTITULARVALUE STRING,
  OACONTCONYUGEINPUT STRING,
  OACONTCONYUGEVALUE STRING,
  EDADCRONOLOGICAINPUT STRING,
  EDADCRONOLOGICAVALUE STRING,
  TIPOACTIVACIONINPUT STRING,
  TIPOACTIVACIONVALUE STRING,
  DOCUMENTOIDENTIDADSININPUT STRING,
  DOCUMENTOIDENTIDADSINVALUE STRING,
  FECHANACIMIENTOSININPUT STRING,
  FECHANACIMIENTOSINVALUE STRING,
  EDADMINIMAASEGINPUT STRING,
  EDADMINIMAASEGVALUE STRING,
  EDADMAXIMAASEGINPUT STRING,
  EDADMAXIMAASEGVALUE STRING,
  EDADPERMANASEGINPUT STRING,
  EDADPERMANASEGVALUE STRING,
  CUMULOFALLECIMIENTOACCINPUT STRING,
  CUMULOFALLECIMIENTOACCVALUE STRING,
  DIRECCIONASEGURADOINPUT STRING,
  DIRECCIONASEGURADOVALUE STRING,
  TELEFONOASEGURADOINPUT STRING,
  TELEFONOASEGURADOVALUE STRING,
  FAXASEGURADOINPUT STRING,
  FAXASEGURADOVALUE STRING,
  EMAILASEGURADOINPUT STRING,
  EMAILASEGURADOVALUE STRING,
  CODDEPARTASEGURADOINPUT STRING,
  CODDEPARTASEGURADOVALUE STRING,
  CODPROVINASEGURADOINPUT STRING,
  CODPROVINASEGURADOVALUE STRING,
  CODDISTRIASEGURADOINPUT STRING,
  CODDISTRIASEGURADOVALUE STRING,
  CAPITALASEGFALLECACCINPUT STRING,
  CAPITALASEGFALLECACCVALUE STRING,
  TASAANUALFALLECACCINPUT STRING,
  TASAANUALFALLECACCVALUE STRING,
  PRIMAANUALFALLECACCINPUT STRING,
  PRIMAANUALFALLECACCVALUE STRING,
  PLAZOVIGENCIAINPUT STRING,
  PLAZOVIGENCIAVALUE STRING,
  FECHANACIMIENTOCOTINPUT STRING,
  FECHANACIMIENTOCOTVALUE STRING,
  SEXOCOTINPUT STRING,
  SEXOCOTVALUE STRING,
  CONDICIONFUMADORCOTINPUT STRING,
  CONDICIONFUMADORCOTVALUE STRING,
  NUMOACOTINPUT STRING,
  NUMOACOTVALUE STRING,
  REASEGCUMULOFALLECACCINPUT STRING,
  REASEGCUMULOFALLECACCVALUE STRING,
  CONTRATANTECODIDENINPUT STRING,
  CONTRATANTECODIDENVALUE STRING,
  COMUNICACIONGENASEGINPUT STRING,
  COMUNICACIONGENASEGVALUE STRING,
  CODIGOIDENTASEGINPUT STRING,
  CODIGOIDENTASEGVALUE STRING,
  CORREOIINPUT STRING,
  CORREOIVALUE STRING,
  CORREOIIINPUT STRING,
  CORREOIIVALUE STRING,
  CORREOIIIINPUT STRING,
  CORREOIIIVALUE STRING,
  TELEFONOIINPUT STRING,
  TELEFONOIVALUE STRING,
  TELEFONOIIINPUT STRING,
  TELEFONOIIVALUE STRING,
  TELEFONOIIIINPUT STRING,
  TELEFONOIIIVALUE STRING,
  COMUNICACIONPOLASEGINPUT STRING,
  COMUNICACIONPOLASEGVALUE STRING,
  COMUNICACIONENASEGINPUT STRING,
  COMUNICACIONENASEGVALUE STRING,
  CAPITALASEGFALLECTPINPUT STRING,
  CAPITALASEGFALLECTPVALUE STRING,
  CAPITALASEGFALLECTAINPUT STRING,
  CAPITALASEGFALLECTAVALUE STRING,
  TASAANUALFALLECACCTPINPUT STRING,
  TASAANUALFALLECACCTPVALUE STRING,
  TASAANUALFALLECACCTAINPUT STRING,
  TASAANUALFALLECACCTAVALUE STRING,
  PRIMAANUALFALLECACCTPINPUT STRING,
  PRIMAANUALFALLECACCTPVALUE STRING,
  PRIMAANUALFALLECACCTAINPUT STRING,
  PRIMAANUALFALLECACCTAVALUE STRING,
  REASEGCUMULOFALLACCTPINPUT STRING,
  REASEGCUMULOFALLACCTPVALUE STRING,
  REASEGCUMULOFALLACCTAINPUT STRING,
  REASEGCUMULOFALLACCTAVALUE STRING,
  CAPITALASEGINVACCINPUT STRING,
  CAPITALASEGINVACCVALUE STRING,
  TASAANUALINVACCINPUT STRING,
  TASAANUALINVACCVALUE STRING,
  PRIMAANUALINVACCINPUT STRING,
  PRIMAANUALINVACCVALUE STRING,
  EDADMINIMAASEGINVINPUT STRING,
  EDADMINIMAASEGINVVALUE STRING,
  EDADMAXIMAASEGINVINPUT STRING,
  EDADMAXIMAASEGINVVALUE STRING,
  EDADPERMANASEGINVINPUT STRING,
  EDADPERMANASEGINVVALUE STRING,
  REASEGCUMULOINVACCINPUT STRING,
  REASEGCUMULOINVACCVALUE STRING,
  CAPITALASEGINDEMINPUT STRING,
  CAPITALASEGINDEMVALUE STRING,
  CAPITALASEGINDEMUCIINPUT STRING,
  CAPITALASEGINDEMUCIVALUE STRING,
  TASAANUALINDEMINPUT STRING,
  TASAANUALINDEMVALUE STRING,
  TASAANUALINDEMUCIINPUT STRING,
  TASAANUALINDEMUCIVALUE STRING,
  PRIMAANUALINDEMINPUT STRING,
  PRIMAANUALINDEMVALUE STRING,
  PRIMAANUALINDEMUCIINPUT STRING,
  PRIMAANUALINDEMUCIVALUE STRING,
  FECHA_PROCESO DATETIME
)
OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/OAVIDATOTALPROTEGIDA_raw/*.parquet"]);