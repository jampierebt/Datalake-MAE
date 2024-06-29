CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.OAPROTECCIONBLINDAJEPLUS_raw`
(
  AUDITDATE TIMESTAMP,
  PK STRING,
  STATIC STRING,
  STATUS STRING,
  EDADINPUT STRING,
  EDADVALUE STRING,
  NUMPLANINTERLOCBINPUT STRING,
  NUMPLANINTERLOCBVALUE STRING,
  OPCIONPBINPUT STRING,
  OPCIONPBVALUE STRING,
  FMOVIMIENTOINPUT STRING,
  FMOVIMIENTOVALUE STRING,
  FECHANACIMIENTOSININPUT STRING,
  FECHANACIMIENTOSINVALUE STRING,
  FECHAEXTRACTOINPUT STRING,
  FECHAEXTRACTOVALUE STRING,
  EXTRACTOFNINPUT STRING,
  EXTRACTOFNVALUE STRING,
  EXTRACTOANUALINPUT STRING,
  EXTRACTOANUALVALUE STRING,
  EDADCONEXTRACTOINPUT STRING,
  EDADCONEXTRACTOVALUE STRING,
  EDADMAXIMAASEGMASIVOINPUT STRING,
  EDADMAXIMAASEGMASIVOVALUE STRING,
  EDADMINIMAASEGMASIVOINPUT STRING,
  EDADMINIMAASEGMASIVOVALUE STRING,
  EDADPERMANASEGMASIVOINPUT STRING,
  EDADPERMANASEGMASIVOVALUE STRING,
  EDADMAXPERCONEXTRACTOINPUT STRING,
  EDADMAXPERCONEXTRACTOVALUE STRING,
  FECHA_PROCESO DATETIME
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/OAPROTECCIONBLINDAJEPLUS_raw/*.parquet"]);