CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.EXT_FLEX_ASEGURADO_raw`
(
  NUMEROPOLIZA STRING,
  FECHA_INI TIMESTAMP,
  FECHA_FIN TIMESTAMP,
  IDPOLIZA NUMERIC,
  IDOPERACION NUMERIC,
  DCOID NUMERIC,
  STATIC STRING,
  AGREGATEDOBJECTID NUMERIC,
  NUMEROOBJETOASEGINPUT STRING,
  TIPO_ASEGURADO STRING,
  TIPODOCUMENTOIDENTIDAD STRING,
  NUMDOCUMENTO STRING,
  NOMBRE STRING,
  SEGUNDONOMBRE STRING,
  APELLIDOPATERNO STRING,
  APELLIDOMATERNO STRING,
  NOMBREPREDETERMINADO STRING,
  SEXO STRING,
  IDSEXO STRING,
  FECHANACIMIENTO TIMESTAMP,
  EDAD STRING,
  PROFESION STRING,
  ACTIVIDADECONOMICA STRING,
  FUMADOR STRING
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/EXT_FLEX_ASEGURADO_raw/*.parquet"]);