CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.PERSONANATURAL_raw`
(
  ADT_EVENTDATE TIMESTAMP,
  PK STRING,
  STATIC STRING,
  STATUS STRING,
  APELLIDOINPUT STRING,
  APELLIDOVALUE STRING,
  APELLIDOMATERNOINPUT STRING,
  APELLIDOMATERNOVALUE STRING,
  FECHANACIMIENTOINPUT STRING,
  FECHANACIMIENTOVALUE STRING,
  SEXOINPUT STRING,
  SEXOVALUE STRING,
  ESTADOCIVILINPUT STRING,
  ESTADOCIVILVALUE STRING,
  CARNETEXTRANJERIAINPUT STRING,
  CARNETEXTRANJERIAVALUE STRING,
  PARTIDANACIMIENTOINPUT STRING,
  PARTIDANACIMIENTOVALUE STRING,
  PASAPORTEINPUT STRING,
  PASAPORTEVALUE STRING,
  NOMBREINPUT STRING,
  NOMBREVALUE STRING,
  DOCUMENTOIDENTIDADINPUT STRING,
  DOCUMENTOIDENTIDADVALUE STRING,
  CARNETMINISTRABINPUT STRING,
  CARNETMINISTRABVALUE STRING,
  CARNETIDENPOLICIAINPUT STRING,
  CARNETIDENPOLICIAVALUE STRING,
  SEGUNDONOMBREINPUT STRING,
  SEGUNDONOMBREVALUE STRING,
  PROFESIONINPUT STRING,
  PROFESIONVALUE STRING,
  CODIGOAFPINPUT STRING,
  CODIGOAFPVALUE STRING,
  NACIONALIDADINPUT STRING,
  NACIONALIDADVALUE STRING,
  FECHAFALLECIMIENTOINPUT STRING,
  FECHAFALLECIMIENTOVALUE STRING,
  FUMADORCONDICIONINPUT STRING,
  FUMADORCONDICIONVALUE STRING,
  LIBRETAMILITARINPUT STRING,
  LIBRETAMILITARVALUE STRING,
  CARNETDIPLOMATICOINPUT STRING,
  CARNETDIPLOMATICOVALUE STRING,
  FECHAMATRIMONIOINPUT STRING,
  FECHAMATRIMONIOVALUE STRING,
  RUCNATURALINPUT STRING,
  RUCNATURALVALUE STRING,
  CARNETFUERZASARMADASINPUT STRING,
  CARNETFUERZASARMADASVALUE STRING,
  AUTORIZACIONEMAILINPUT STRING,
  AUTORIZACIONEMAILVALUE STRING,
  AUTORIZACIONSMSINPUT STRING,
  AUTORIZACIONSMSVALUE STRING,
  AUTORIZACIONCOMERDATINPUT STRING,
  AUTORIZACIONCOMERDATVALUE STRING,
  AUTORIZACIONTRATDATOSINPUT STRING,
  AUTORIZACIONTRATDATOSVALUE STRING,
  AUTORIZACIONACCDATOSINPUT STRING,
  AUTORIZACIONACCDATOSVALUE STRING,
  TELEFONOCELULARDOSINPUT STRING,
  TELEFONOCELULARDOSVALUE STRING,
  TELEFONOCELULARTRESINPUT STRING,
  TELEFONOCELULARTRESVALUE STRING,
  TELEFONOCELULARUNOINPUT STRING,
  TELEFONOCELULARUNOVALUE STRING,
  CODIGOCOLABORADORINPUT STRING,
  CODIGOCOLABORADORVALUE STRING,
  INDICADORCOLABORADORINPUT STRING,
  INDICADORCOLABORADORVALUE STRING,
  AUTORIZACIONENVLLAMAINPUT STRING,
  AUTORIZACIONENVLLAMAVALUE STRING,
  CARGODESEMPASEGINPUT STRING,
  CARGODESEMPASEGVALUE STRING,
  CENTROTRABASEGINPUT STRING,
  CENTROTRABASEGVALUE STRING,
  INDPEPINPUT STRING,
  INDPEPVALUE STRING,
  COMUNICACIONGENERALINPUT STRING,
  COMUNICACIONGENERALVALUE STRING,
  FECHA_PROCESO DATETIME,
  ADT_EVENTDATE_YYYYMMDD NUMERIC
)
OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/PERSONANATURAL_raw/*.parquet"]);