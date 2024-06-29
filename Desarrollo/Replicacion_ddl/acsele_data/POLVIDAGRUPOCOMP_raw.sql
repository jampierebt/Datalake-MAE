CREATE OR REPLACE EXTERNAL TABLE `iter-data-storage-pv-uat.acsele_temp.POLVIDAGRUPOCOMP_raw`
(
  AUDITDATE TIMESTAMP,
  PK NUMERIC,
  STATIC NUMERIC,
  STATUS NUMERIC,
  CODAGENTIENOFIINPUT STRING,
  CODAGENTIENOFIVALUE STRING,
  CODVENDEDORINPUT STRING,
  CODVENDEDORVALUE STRING,
  PROVEEDORDIGITINPUT STRING,
  PROVEEDORDIGITVALUE STRING,
  FECHAANULFUTUROINPUT STRING,
  FECHAANULFUTUROVALUE STRING,
  FECHAVENTAINPUT STRING,
  FECHAVENTAVALUE STRING,
  CODINTERMEDIARIOINPUT STRING,
  CODINTERMEDIARIOVALUE STRING,
  GASADMINCANPINPUT STRING,
  GASADMINCANPVALUE STRING,
  NUMPLANINTERLOCFINPUT STRING,
  NUMPLANINTERLOCFVALUE STRING,
  FECHANACIMIENTOASISTINPUT STRING,
  FECHANACIMIENTOASISTVALUE STRING,
  PRIMACALCULADAINPUT STRING,
  PRIMACALCULADAVALUE STRING,
  GASADMINISTRATIVOINPUT STRING,
  GASADMINISTRATIVOVALUE STRING,
  GASADQUISICIONINPUT STRING,
  GASADQUISICIONVALUE STRING,
  MONUTILIDADINPUT STRING,
  MONUTILIDADVALUE STRING,
  MONDESCUENTOINPUT STRING,
  MONDESCUENTOVALUE STRING,
  SINIESTRALIDADGRUPOINPUT STRING,
  SINIESTRALIDADGRUPOVALUE STRING,
  INDSEGCOMPLEMENINPUT STRING,
  INDSEGCOMPLEMENVALUE STRING,
  REMUNERACIONDETTOTINPUT STRING,
  REMUNERACIONDETTOTVALUE STRING,
  TOTALEMPINPUT STRING,
  TOTALEMPVALUE STRING,
  TOTALNOREGISTROSINPUT STRING,
  TOTALNOREGISTROSVALUE STRING,
  TOTALOBRINPUT STRING,
  TOTALOBRVALUE STRING,
  TOTALNOREGOBRINPUT STRING,
  TOTALNOREGOBRVALUE STRING,
  TOTALOBRARIESGOINPUT STRING,
  TOTALOBRARIESGOVALUE STRING,
  TOTALNOREGOBRARINPUT STRING,
  TOTALNOREGOBRARVALUE STRING,
  NIVELAGRUPREASEGINPUT STRING,
  NIVELAGRUPREASEGVALUE STRING,
  NUMEROPROPUESTAINPUT STRING,
  NUMEROPROPUESTAVALUE STRING,
  TASACALCULOINPUT STRING,
  TASACALCULOVALUE STRING,
  NUMEROCOTIZACIONINPUT STRING,
  NUMEROCOTIZACIONVALUE STRING,
  NUMASEGURADOSINPUT STRING,
  NUMASEGURADOSVALUE STRING,
  RPRIMANETAINPUT STRING,
  RPRIMANETAVALUE STRING,
  RGASEMISINPUT STRING,
  RGASEMISVALUE STRING,
  RIGVINPUT STRING,
  RIGVVALUE STRING,
  RPRIMATOTALINPUT STRING,
  RPRIMATOTALVALUE STRING,
  RFRECPAGOINPUT STRING,
  RFRECPAGOVALUE STRING,
  RMONTOSMAXINPUT STRING,
  RMONTOSMAXVALUE STRING,
  RREMUNERATOTALINPUT STRING,
  RREMUNERATOTALVALUE STRING,
  FECHAINIPERPAGOINPUT STRING,
  FECHAINIPERPAGOVALUE STRING,
  FECHAFINPERPAGOINPUT STRING,
  FECHAFINPERPAGOVALUE STRING,
  INDEXCLUSIONESINPUT STRING,
  INDEXCLUSIONESVALUE STRING,
  INDCARGATRAMAINPUT STRING,
  INDCARGATRAMAVALUE STRING,
  FECHAEXCLUSIONESINPUT STRING,
  FECHAEXCLUSIONESVALUE STRING,
  SIMBOLOMONEDASININPUT STRING,
  SIMBOLOMONEDASINVALUE STRING,
  SIMBOLOMONEDAPLSININPUT STRING,
  SIMBOLOMONEDAPLSINVALUE STRING,
  FECHA_PROCESO DATETIME
)OPTIONS (format="PARQUET",URIS=["gs://interseguro-datalake-alloy-uat-new/acsele_data/POLVIDAGRUPOCOMP_raw/*.parquet"]);