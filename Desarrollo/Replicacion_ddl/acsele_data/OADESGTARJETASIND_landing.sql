CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.OADESGTARJETASIND_landing`
(
  AUDITDATE TIMESTAMP,
  PK NUMERIC,
  STATIC NUMERIC,
  STATUS NUMERIC
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/OADESGTARJETASIND_landing/*.parquet"]);