CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.CLAIMPAYMENT_raw`
(
  claimpaymentid NUMERIC,
  claimid NUMERIC,
  claimpaymentdate TIMESTAMP,
  coveragedescription STRING,
  reservetype NUMERIC,
  thirdpartyid NUMERIC,
  beneficiary STRING,
  state NUMERIC,
  amount FLOAT64,
  paidamount FLOAT64,
  doneby STRING,
  reservecurrencyid NUMERIC,
  paidcurrencyid NUMERIC,
  exchangerate FLOAT64,
  deductiblepercentage FLOAT64,
  deductiblereference STRING,
  isdeductibleapplied NUMERIC,
  deductibleamount FLOAT64,
  ispenaltyapplied NUMERIC,
  penaltypercentage FLOAT64,
  isrefundapplied NUMERIC,
  refundpercentage FLOAT64,
  istotalpayment NUMERIC,
  cpy_franchiseamount NUMERIC,
  FECHA_PROCESO DATETIME
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/CLAIMPAYMENT_raw/*.parquet"]);