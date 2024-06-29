CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.STCL_COVERAGEINVOICE_raw`
(
  COVI_INVOICE STRING,
  COVI_DATE TIMESTAMP,
  TPT_ID NUMERIC,
  DCO_ID NUMERIC,
  CRBF_ID NUMERIC,
  COT_ID NUMERIC,
  POD_ID NUMERIC,
  DCO_IDTAXES NUMERIC,
  COT_IDTAXES NUMERIC,
  COVI_RATE NUMERIC,
  FECHA_PROCESO DATETIME
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/STCL_COVERAGEINVOICE_raw/*.parquet"]);