CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.PREINSUREDOBJECT_raw`
(
  AUDITDATE TIMESTAMP,
  PK STRING,
  STATIC STRING,
  STATUS STRING,
  NUMEROOBJETOASEGINPUT STRING,
  NUMEROOBJETOASEGVALUE STRING,
  NOMCOMASEGURADOINPUT STRING,
  NOMCOMASEGURADOVALUE STRING,
  NOMCOMBENEFICIARIOINPUT STRING,
  NOMCOMBENEFICIARIOVALUE STRING,
  FECHA_PROCESO DATETIME
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/PREINSUREDOBJECT_raw/*.parquet"]);