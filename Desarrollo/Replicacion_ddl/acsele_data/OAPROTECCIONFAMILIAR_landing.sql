CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.OAPROTECCIONFAMILIAR_landing`
(
  AUDITDATE TIMESTAMP,
  PK STRING,
  STATIC STRING,
  STATUS STRING,
  EDADINPUT STRING,
  EDADVALUE STRING
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/OAPROTECCIONFAMILIAR_landing/*.parquet"]);