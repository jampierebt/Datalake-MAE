CREATE OR REPLACE PROCEDURE `iter-data-storage-pv-uat`.programs.sp_goldenrecord_asegurado()
OPTIONS(
  strict_mode=true)
BEGIN 
-- *********************************************************************
-- * Fecha          : 28/10/2021
-- * Autor          : Ramirez Hurtado, Tito J.
--                  : Jayo Escalante, Geraldine Indira
-- * Tabla Destinos : - 
-- *                : - 
-- * Tablas Fuentes : - 
-- * Descripción    : 
-- *********************************************************************
-- *                       MODIFICACIONES POSTERIORES                  *
-- *===================================================================*
-- *===================================================================*
-- *   Fecha   | Persona |           Modificación Realizada            *
-- *           |         |                                            
-- *********************************************************************

-- ================================================================================================ 
-- ***                                   ACSELE                                                 *** 
-- ================================================================================================ 
-- ----------------------------------------------------------------------
-- Paso A10: PERSONA - NUMERO DOCUMENTOS - Una persona en acsele, puede tener varios documentos.
-- ----------------------------------------------------------------------
CREATE OR REPLACE TABLE `iter-data-storage-pv-uat.temp.TMP_PERSONA_ASEGURADO_DOCUMENTOS`
AS
WITH TMP_DOCUMENT AS 
(
SELECT 
	STATIC
	,[STRUCT(PNAT.DOCUMENTOIDENTIDADINPUT  AS NUMERO_DOCUMENTO   , '01' AS TIPO_DOCUMENTO , PNAT.TIPO_PERSONA,1 AS PRIORIDAD_DOCUMENTO)
  	,STRUCT(PNAT.CARNETEXTRANJERIAINPUT     ,'02', PNAT.TIPO_PERSONA,2 AS PRIORIDAD_DOCUMENTO)
  	,STRUCT(PNAT.RUCNATURALINPUT     , '03', PNAT.TIPO_PERSONA,3 AS PRIORIDAD_DOCUMENTO)
	,STRUCT(PNAT.PASAPORTEINPUT     , '04', PNAT.TIPO_PERSONA,4 AS PRIORIDAD_DOCUMENTO)
	,STRUCT(PNAT.CARNETDIPLOMATICOINPUT     , '05', PNAT.TIPO_PERSONA,5 AS PRIORIDAD_DOCUMENTO)
	,STRUCT(PNAT.CARNETFUERZASARMADASINPUT      ,'06', PNAT.TIPO_PERSONA,6 AS PRIORIDAD_DOCUMENTO)
	,STRUCT(PNAT.CARNETIDENPOLICIAINPUT     ,'07', PNAT.TIPO_PERSONA,7 AS PRIORIDAD_DOCUMENTO)
	,STRUCT(PNAT.CARNETMINISTRABINPUT     ,'08', PNAT.TIPO_PERSONA,8 AS PRIORIDAD_DOCUMENTO)
	,STRUCT(PNAT.PARTIDANACIMIENTOINPUT     ,'09', PNAT.TIPO_PERSONA,9 AS PRIORIDAD_DOCUMENTO)
	,STRUCT(PNAT.LIBRETAMILITARINPUT     ,'10', PNAT.TIPO_PERSONA,10 AS PRIORIDAD_DOCUMENTO)] AS DOCUMENTO_PERSONA
FROM (
SELECT DISTINCT
STATIC
,DOCUMENTOIDENTIDADINPUT
,RUCNATURALINPUT
,PASAPORTEINPUT
,CARNETDIPLOMATICOINPUT
,CARNETEXTRANJERIAINPUT
,CARNETFUERZASARMADASINPUT
,CARNETIDENPOLICIAINPUT
,CARNETMINISTRABINPUT
,PARTIDANACIMIENTOINPUT
,LIBRETAMILITARINPUT
,'NATURAL' AS TIPO_PERSONA
FROM `acsele_data.PERSONANATURAL_raw`
) PNAT
UNION ALL
SELECT 
 STATIC
,[STRUCT(PJUR.RUCINPUT  AS NUMERO_DOCUMENTO   , '03' AS TIPO_DOCUMENTO,PJUR.TIPO_PERSONA,1 AS PRIORIDAD_DOCUMENTO)] AS DOCUMENTO_PERSONA
FROM (
SELECT DISTINCT STATIC, 
RUCINPUT, 
'JURIDICA' AS TIPO_PERSONA,
FROM `acsele_data.PERSONAJURIDICA_raw`
) PJUR
)
SELECT 
 DOC.STATIC
,ARRAY_AGG(STRUCT<NUMERO_DOCUMENTO STRING,TIPO_DOCUMENTO STRING ,TIPO_PERSONA STRING, PRIORIDAD_DOCUMENTO INT64 ,HASH_ID STRING,TIPO_DOCUMENTO_GLOSA STRING>
    (PER.NUMERO_DOCUMENTO,
    PER.TIPO_DOCUMENTO,
    PER.TIPO_PERSONA, 
    PER.PRIORIDAD_DOCUMENTO,
    upper(to_hex(sha256(CONCAT(EG1.CODIGO_CORPORATIVO,LPAD(PER.NUMERO_DOCUMENTO,15,'0'))))),
	EG1.NOMBRE_GLOBAL
    )) AS DOCUMENTOS
FROM TMP_DOCUMENT DOC
,UNNEST(DOCUMENTO_PERSONA) PER
LEFT JOIN `iter-data-storage-pv-uat.config_data.CNF_EQUIVALENCIA_GLOBAL` EG1 
       ON EG1.VALOR_ORIGEN = PER.TIPO_DOCUMENTO 
      AND EG1.ID_FUENTE    ='01' 
	  AND EG1.CODIGO_TIPO ='TIPODOC'
WHERE PER.NUMERO_DOCUMENTO IS NOT NULL
GROUP BY DOC.STATIC
;

-- ----------------------------------------------------------------------
-- Paso A14: PERSONA - DATOS PERSONALES
-- ----------------------------------------------------------------------
CREATE OR REPLACE TABLE `iter-data-storage-pv-uat.temp.TMP_PERSONA_ASEGURADO_DATOS`
AS
SELECT
	PER.THIRDPARTYID,
	TRIM(UPPER(PER.APELLIDO_PATERNO)) AS APELLIDO_PATERNO,
	TRIM(UPPER(PER.APELLIDO_MATERNO)) AS APELLIDO_MATERNO,
    CASE WHEN TRIM(UPPER(PER.NOMBRE_SEGUNDO)) IS NULL THEN TRIM(UPPER(PER.NOMBRE))
	WHEN TRIM(UPPER(PER.NOMBRE)) IS NULL THEN TRIM(UPPER(PER.NOMBRE_SEGUNDO))
	ELSE TRIM(UPPER(CONCAT(PER.NOMBRE,' ',PER.NOMBRE_SEGUNDO)))
	END AS NOMBRE,
	UPPER(PER.RAZON_SOCIAL) AS RAZON_SOCIAL,
	PER.FECHA_NACIMIENTO,
	UPPER(PER.PROFESION) AS PROFESION,
	PER.PROFESION_CARGO_DESEMPASEG,
	PER.CODIGO_AFP,
	UPPER(PER.NACIONALIDAD ) AS NACIONALIDAD,
	PER.FECHA_FALLECIMIENTO,
	CASE WHEN PER.CONDICION_FUMADOR IS NULL THEN 'SIN ESPECIFICAR'
	ELSE UPPER(TRIM(PER.CONDICION_FUMADOR)) 
	END AS CONDICION_FUMADOR,
	PER.FECHA_MATRIMONIO,
	UPPER(PER.CENTRO_TRABAJO) AS CENTRO_TRABAJO,
	PER.AUTORIZACION_EMAIL,
	PER.AUTORIZACION_SMS,
	PER.AUTORIZACION_COMERDAT,
	PER.AUTORIZACION_CONTRATDATOS,
	PER.AUTORIZACION_ACCDATOS,
	PER.AUTORIZACION_ENVLLAMA,
	PER.CODIGO_COLABORADOR,
	PER.INDPEP,
	PER.COMUNICACION_GENERAL,
	PER.TABLA_FUENTE,
	-----------GENERO
    CASE WHEN EG2.CODIGO_GLOBAL IS NULL THEN '00'
	ELSE EG2.CODIGO_GLOBAL END AS ID_GENERO,
	CASE WHEN EG2.NOMBRE_GLOBAL IS NULL THEN 'SIN ESPECIFICAR'
	ELSE EG2.NOMBRE_GLOBAL END AS GENERO,

	-----------ESTADO CIVIL
    CASE WHEN EG3.CODIGO_GLOBAL IS NULL THEN '00'
	ELSE EG3.CODIGO_GLOBAL END AS ID_ESTADO_CIVIL,
	CASE WHEN EG3.NOMBRE_GLOBAL IS NULL THEN 'SIN ESPECIFICAR'
	ELSE EG3.NOMBRE_GLOBAL END AS ESTADO_CIVIL,

  	-----------CONDICION FUMADOR
    CASE WHEN EG4.CODIGO_GLOBAL IS NULL THEN '00'
	ELSE EG4.CODIGO_GLOBAL END AS ID_CONDICION_FUMADOR,
  --  EG4.NOMBRE_GLOBAL AS CONDICION_FUMADOR   
  --  PER.GENERO, PER.ESTADO_CIVIL
FROM (
	SELECT DISTINCT
	PNAT.STATIC AS THIRDPARTYID
	,PNAT.PK
	,PNAT.APELLIDOINPUT APELLIDO_PATERNO
	,PNAT.APELLIDOMATERNOINPUT APELLIDO_MATERNO
	,PNAT.NOMBREINPUT NOMBRE 
	,PNAT.SEGUNDONOMBREINPUT NOMBRE_SEGUNDO  
	,CAST(NULL AS STRING) RAZON_SOCIAL
	,CASE
		WHEN EXTRACT(YEAR FROM SAFE_CAST(PNAT.FECHANACIMIENTOINPUT AS DATE)) <= 1900 OR IFNULL(PNAT.FECHANACIMIENTOINPUT, '') = '' THEN CAST(NULL AS DATE)
		ELSE SAFE_CAST(PNAT.FECHANACIMIENTOINPUT AS DATE)
	END FECHA_NACIMIENTO
	,PNAT.SEXOINPUT GENERO 
	,PNAT.ESTADOCIVILINPUT ESTADO_CIVIL 
	,PNAT.PROFESIONINPUT PROFESION  
	,UPPER(PNAT.CARGODESEMPASEGINPUT) PROFESION_CARGO_DESEMPASEG
	,PNAT.CODIGOAFPINPUT CODIGO_AFP 
	,IF(CHAR_LENGTH(IFNULL(NACIONALIDADINPUT, '')) = 0, 'NO IDENTIFICADA', UPPER(PNAT.NACIONALIDADINPUT)) NACIONALIDAD
	,CASE
		WHEN EXTRACT(YEAR FROM SAFE_CAST(PNAT.FECHAFALLECIMIENTOINPUT AS DATE)) <= 1900 OR IFNULL(PNAT.FECHAFALLECIMIENTOINPUT, '') = '' THEN CAST(NULL AS DATE)
		ELSE SAFE_CAST(PNAT.FECHAFALLECIMIENTOINPUT AS DATE)
	END FECHA_FALLECIMIENTO
	,PNAT.FUMADORCONDICIONINPUT CONDICION_FUMADOR
	,PNAT.FECHAMATRIMONIOINPUT FECHA_MATRIMONIO
	,UPPER(PNAT.CENTROTRABASEGINPUT) CENTRO_TRABAJO
	,PNAT.AUTORIZACIONEMAILINPUT AUTORIZACION_EMAIL
	,PNAT.AUTORIZACIONSMSINPUT AUTORIZACION_SMS
	,PNAT.AUTORIZACIONCOMERDATINPUT AUTORIZACION_COMERDAT
	,PNAT.AUTORIZACIONTRATDATOSINPUT AUTORIZACION_CONTRATDATOS
	,PNAT.AUTORIZACIONACCDATOSINPUT AUTORIZACION_ACCDATOS
	,PNAT.AUTORIZACIONENVLLAMAINPUT AUTORIZACION_ENVLLAMA
	,PNAT.CODIGOCOLABORADORINPUT CODIGO_COLABORADOR
	,PNAT.INDPEPINPUT INDPEP
	,PNAT.COMUNICACIONGENERALINPUT COMUNICACION_GENERAL
	,'PERSONANATURAL' AS TABLA_FUENTE
FROM `iter-data-storage-pv-uat.acsele_data.PERSONANATURAL_raw` PNAT 
UNION ALL
SELECT DISTINCT 
	PJUR.STATIC AS THIRDPARTYID
	,PJUR.PK
	,CAST(NULL AS STRING) APELLIDO_PATERNO
	,CAST(NULL AS STRING) APELLIDO_MATERNO
	,CAST(NULL AS STRING) NOMBRE
	,CAST(NULL AS STRING) NOMBRE_SEGUNDO
	,UPPER(PJUR.NOMBRECOMPEMPINPUT) RAZON_SOCIAL
	,CASE
		WHEN EXTRACT(YEAR FROM SAFE_CAST(PJUR.FECHACONSTITUCIONINPUT AS DATE)) <= 1900 OR IFNULL(PJUR.FECHACONSTITUCIONINPUT, '') = '' THEN CAST(NULL AS DATE)
		ELSE SAFE_CAST(PJUR.FECHACONSTITUCIONINPUT AS DATE)
	END FECHA_NACIMIENTO
	,CAST(NULL AS STRING) GENERO
	,CAST(NULL AS STRING) ESTADO_CIVIL
	,CAST(NULL AS STRING) PROFESION
	,CAST(NULL AS STRING) PROFESION_CARGO_DESEMPASEG
	,CAST(NULL AS STRING) CODIGO_AFP
	,'NO IDENTIFICADA' NACIONALIDAD
	,CAST(NULL AS DATE) FECHA_FALLECIMIENTO
	,CAST(NULL AS STRING) CONDICION_FUMADOR
	,CAST(NULL AS STRING) FECHA_MATRIMONIO
	,CAST(NULL AS STRING) CENTRO_TRABAJO
	,CAST(NULL AS STRING) AUTORIZACION_EMAIL
	,CAST(NULL AS STRING) AUTORIZACION_SMS
	,CAST(NULL AS STRING) AUTORIZACION_COMERDAT
	,CAST(NULL AS STRING) AUTORIZACION_CONTRATDATOS
	,CAST(NULL AS STRING) AUTORIZACION_ACCDATOS
	,CAST(NULL AS STRING) AUTORIZACION_ENVLLAMA
	,CAST(NULL AS STRING) CODIGO_COLABORADOR
	,CAST(NULL AS STRING) INDPEP
	,CAST(NULL AS STRING) COMUNICACION_GENERAL
	,'PERSONAJURIDICA' AS TABLA_FUENTE
FROM `iter-data-storage-pv-uat.acsele_data.PERSONAJURIDICA_raw` PJUR
) PER
  LEFT JOIN `iter-data-storage-pv-uat.config_data.CNF_EQUIVALENCIA_GLOBAL` EG2 
         ON EG2.NOMBRE_GLOBAL/*VALOR_ORIGEN*/  = UPPER(TRIM(PER.GENERO)) --> NO EXISTE EL ID, SE DEBE HOMOLOGAR.
	    AND EG2.ID_FUENTE     = '01'
		AND EG2.CODIGO_TIPO   = 'GENERO'
  LEFT JOIN `iter-data-storage-pv-uat.config_data.CNF_EQUIVALENCIA_GLOBAL` EG3 
         ON EG3.NOMBRE_GLOBAL/*VALOR_ORIGEN*/  =UPPER(TRIM( PER.ESTADO_CIVIL))
	    AND EG3.ID_FUENTE       ='01' 
		AND EG3.CODIGO_TIPO     = 'ESTADOCIVIL'
  LEFT JOIN `iter-data-storage-pv-uat.config_data.CNF_EQUIVALENCIA_GLOBAL` EG4 
         ON EG4.NOMBRE_GLOBAL/*VALOR_ORIGEN*/  =UPPER(TRIM( PER.CONDICION_FUMADOR))
	    AND EG4.ID_FUENTE     = '01' 
		AND EG4.CODIGO_TIPO   = 'FUMADOR'
;

-- ----------------------------------------------------------------------
-- Paso A16: DATOS PERSONALES Y DOCUMENTO
-- ----------------------------------------------------------------------
CREATE OR REPLACE TABLE `iter-data-storage-pv-uat.temp.TMP_PERSONA_ASEGURADO_ACSELE_UNI`
AS
SELECT
  DOC.STATIC
, DOC.DOCUMENTOS[ORDINAL(1)].NUMERO_DOCUMENTO
, DOC.DOCUMENTOS[ORDINAL(1)].TIPO_DOCUMENTO AS ID_TIPO_DOCUMENTO
, DOC.DOCUMENTOS[ORDINAL(1)].HASH_ID
, DOC.DOCUMENTOS[ORDINAL(1)].TIPO_DOCUMENTO_GLOSA AS TIPO_DOCUMENTO
, DOC.DOCUMENTOS
, PER.*
FROM `iter-data-storage-pv-uat.temp.TMP_PERSONA_ASEGURADO_DOCUMENTOS` DOC
INNER JOIN `iter-data-storage-pv-uat.temp.TMP_PERSONA_ASEGURADO_DATOS` PER 
        ON PER.THIRDPARTYID=DOC.STATIC
;

-- ----------------------------------------------------------------------
-- Paso A16: CARGA - TABLA FINAL
-- ----------------------------------------------------------------------
 
CREATE OR REPLACE TABLE `iter-data-storage-pv-uat.temp.TMP_POLIZA_ASEGURADO_ACSELE`
AS
SELECT 
	'01' AS ID_FUENTE
	,POL.ID_ROL
	,CONCAT('03', '-', ASE.ID_TIPO_DOCUMENTO, '-', ASE.NUMERO_DOCUMENTO)  AS ID_PERSONA
	,ASE.HASH_ID
    ,POL.NUMERO_POLIZA
	,POL.ID_PRODUCTO
	,AP.NOMBRE_PRODUCTO
	,AP.NOMBRE_GRUPO_PRODUCTO
    ,ASE.ID_TIPO_DOCUMENTO
    ,ASE.TIPO_DOCUMENTO
    ,ASE.NUMERO_DOCUMENTO
    ,ASE.APELLIDO_PATERNO
    ,ASE.APELLIDO_MATERNO
    ,ASE.NOMBRE
    ,ASE.RAZON_SOCIAL
    ,SAFE_CAST(ASE.FECHA_NACIMIENTO AS DATE) AS FECHA_NACIMIENTO
    ,SAFE_CAST(ASE.FECHA_FALLECIMIENTO AS DATE) AS FECHA_FALLECIMIENTO
    ,ASE.ID_GENERO
    ,ASE.GENERO
    ,ASE.ID_ESTADO_CIVIL
    ,ASE.ESTADO_CIVIL
    ,ASE.PROFESION
    ,ASE.NACIONALIDAD
    ,ASE.CENTRO_TRABAJO
    ,ASE.ID_CONDICION_FUMADOR
    ,ASE.CONDICION_FUMADOR
    ,'' AS CUSPP
    ,ASE.CODIGO_AFP
    ,'ASEGURADO' AS PARENTESCO
    ,'' AS ID_PADRE
    ,POL.FECHA_CREACION
    ,POL.FECHA_MODIFICACION
    ,POL.ID_ASEGURADO
FROM (
		SELECT  
			NUMERO_POLIZA
			,CAST (P.ID_PRODUCTO AS STRING) AS ID_PRODUCTO
			,THIRDPARTYID
			,ID_ASEGURADO
			,'03' AS ID_ROL
			,CURRENT_TIMESTAMP AS FECHA_CREACION
			,CURRENT_TIMESTAMP AS FECHA_MODIFICACION
    	FROM `iter-data-storage-pv-uat.acsele_data.TD_POLIZA_ASEGURADO_raw` P
    	WHERE STATUS_OPERATION='Applied operation'
		QUALIFY (RANK()OVER(PARTITION BY NUMERO_POLIZA ORDER BY OPERATION_DATETIME DESC , NUMERO_OPERACION DESC))=1 --(si tiene 2 asegurados en una operacion, se trae los dos)
		--QUALIFY (ROW_NUMBER()OVER(PARTITION BY NUMERO_POLIZA,THIRDPARTYID ORDER BY OPERATION_DATETIME DESC  ))=1  --(si tiene 2 asegurados en una operacio, SOLO TRAE 1)
)POL 
INNER JOIN  `iter-data-storage-pv-uat.temp.TMP_PERSONA_ASEGURADO_ACSELE_UNI` ASE
        ON CAST( POL.THIRDPARTYID AS INT64)= CAST(ASE.STATIC AS INT64)
INNER JOIN `iter-data-storage-pv-uat.config_data.CNF_AGRUPACION_PRODUCTO` AP 
       ON CAST(AP.ID_PRODUCTO AS INT64) = CAST(POL.ID_PRODUCTO AS INT64) 
AND AP.ID_FUENTE = '01' 
AND AP.ID_GRUPO_PRODUCTO IN ( '00','01','02','03') 

UNION ALL 

-------------------------------------------------------------------------------------------
-- GARANTIA EXTENDIDA 
-------------------------------------------------------------------------------------------
SELECT 
	'01' AS ID_FUENTE
	,POL.ID_ROL
	,CONCAT('03', '-', ASE.ID_TIPO_DOCUMENTO, '-', ASE.NUMERO_DOCUMENTO)  AS ID_PERSONA
	,ASE.HASH_ID
    ,POL.NUMERO_POLIZA
	,POL.ID_PRODUCTO
	,AP.NOMBRE_PRODUCTO
	,AP.NOMBRE_GRUPO_PRODUCTO
    ,ASE.ID_TIPO_DOCUMENTO
    ,ASE.TIPO_DOCUMENTO
    ,ASE.NUMERO_DOCUMENTO
    ,ASE.APELLIDO_PATERNO
    ,ASE.APELLIDO_MATERNO
    ,ASE.NOMBRE
    ,ASE.RAZON_SOCIAL
    ,SAFE_CAST(ASE.FECHA_NACIMIENTO AS DATE) AS FECHA_NACIMIENTO
    ,SAFE_CAST(ASE.FECHA_FALLECIMIENTO AS DATE) AS FECHA_FALLECIMIENTO
    ,ASE.ID_GENERO
    ,ASE.GENERO
    ,ASE.ID_ESTADO_CIVIL
    ,ASE.ESTADO_CIVIL
    ,ASE.PROFESION
    ,ASE.NACIONALIDAD
    ,ASE.CENTRO_TRABAJO
    ,ASE.ID_CONDICION_FUMADOR
    ,ASE.CONDICION_FUMADOR
    ,'' AS CUSPP
    ,ASE.CODIGO_AFP
    ,'ASEGURADO' AS PARENTESCO
    ,'' AS ID_PADRE
    ,POL.FECHA_CREACION
    ,POL.FECHA_MODIFICACION
  , -1 AS ID_ASEGURADO
FROM (
		SELECT  
			P.NUMERO_POLIZA
			,CAST (P.ID_PRODUCTO AS STRING) AS ID_PRODUCTO
			,IFNULL(TRIM(P.NUMERODOCUMENTOGEINPUT),' ') AS NUMERO_DOCUMENTO
			,REPLACE(REPLACE(UPPER(P.TIPODOCUMENTOGEINPUT),'DOCUMENTOIDENTIDAD','01'),'CARNETDIPLOMATICO','05') AS TIPO_DOCUMENTO
			,'03' AS ID_ROL
			,CURRENT_TIMESTAMP AS FECHA_CREACION
			,CURRENT_TIMESTAMP AS FECHA_MODIFICACION
		FROM `iter-data-storage-pv-uat.acsele_data.TD_POLIZA_CONTRATANTE_GE_raw`  P
    	WHERE P.STATUS_OPERATION='Applied operation'
		QUALIFY (RANK()OVER(PARTITION BY P.NUMERO_POLIZA ORDER BY P.OPERATION_DATETIME DESC , P.NUMERO_OPERACION DESC))=1 
	)POL 
INNER JOIN  `iter-data-storage-pv-uat.temp.TMP_PERSONA_ASEGURADO_ACSELE_UNI` ASE
--POLGARANTIA EXTENDIDA PRESENTA UN TIPO_DOCUMENTO DIFERENTE QUE EL DE PERSONA_NATURAL
        ON POL.NUMERO_DOCUMENTO= ASE.NUMERO_DOCUMENTO
		AND POL.TIPO_DOCUMENTO=ASE.ID_TIPO_DOCUMENTO
INNER JOIN `iter-data-storage-pv-uat.config_data.CNF_AGRUPACION_PRODUCTO` AP 
       ON CAST(AP.ID_PRODUCTO AS INT64) = CAST(POL.ID_PRODUCTO AS INT64) 
AND AP.ID_FUENTE  = '01' 
AND AP.ID_PRODUCTO='39480'

UNION ALL 

-------------------------------------------------------------------------------------------
-- DESGRAVAMEN PROTECCION TARJETAS INDIVIDUAL 
-------------------------------------------------------------------------------------------

SELECT 
	 POL.ID_FUENTE
	,POL.ID_ROL
	,CONCAT('03', '-', POL.ID_TIPO_DOCUMENTO, '-', POL.NUMERO_DOCUMENTO)  AS ID_PERSONA
	,upper(to_hex(sha256(CONCAT(EG1.CODIGO_CORPORATIVO,LPAD(POL.NUMERO_DOCUMENTO,15,'0'))))) HASH_ID
    ,POL.NUMERO_POLIZA
	,POL.ID_PRODUCTO
	,AP.NOMBRE_PRODUCTO
	,AP.NOMBRE_GRUPO_PRODUCTO
    ,POL.ID_TIPO_DOCUMENTO
    ,POL.TIPO_DOCUMENTO
    ,POL.NUMERO_DOCUMENTO
    ,'' AS APELLIDO_PATERNO
    ,'' AS APELLIDO_MATERNO
    ,POL.NOMBRE
    ,' ' AS RAZON_SOCIAL
    ,SAFE_CAST(POL.FECHA_NACIMIENTO AS DATE) AS FECHA_NACIMIENTO
    ,SAFE_CAST(NULL AS DATE) AS FECHA_FALLECIMIENTO
    ,'00' AS ID_GENERO
    ,'SIN ESPECIFICAR' AS GENERO
    ,'00' AS ID_ESTADO_CIVIL
    ,'SIN ESPECIFICAR' AS ESTADO_CIVIL
    ,'' AS PROFESION
    ,'' AS NACIONALIDAD
    ,'' AS CENTRO_TRABAJO
    ,'00' AS ID_CONDICION_FUMADOR
    ,'' AS CONDICION_FUMADOR
    ,'' AS CUSPP
    ,'' AS CODIGO_AFP
    ,POL.PARENTESCO
    ,'' AS ID_PADRE
    ,POL.FECHA_CREACION
    ,POL.FECHA_MODIFICACION
, -1 AS ID_ASEGURADO
FROM (
		SELECT  
		    '01' AS ID_FUENTE
			,'03' AS ID_ROL
			,CAST (P.ID_PRODUCTO AS STRING) AS ID_PRODUCTO
			,CASE WHEN TRIM(P.TIPODOCTRAMAINPUT)='Documento de Identidad' THEN '01'
			 WHEN TRIM(P.TIPODOCTRAMAINPUT)='Carnet de Extranjeria' THEN '02'
			 WHEN TRIM(P.TIPODOCTRAMAINPUT)='Pasaporte' THEN '04'
			 ELSE ''
			END AS ID_TIPO_DOCUMENTO
			,IFNULL(TRIM(P.NUMERODOCTRAMAINPUT),'') AS NUMERO_DOCUMENTO
			,TRIM(P.NUMERO_POLIZA) AS NUMERO_POLIZA
			,CASE WHEN TRIM(P.TIPODOCTRAMAINPUT)='Documento de Identidad' THEN 'DOCUMENTO NACIONAL DE IDENTIDAD'
			 WHEN TRIM(P.TIPODOCTRAMAINPUT)='Carnet de Extranjeria' THEN 'CARNET DE EXTRANJERIA'
			 WHEN TRIM(P.TIPODOCTRAMAINPUT)='Pasaporte' THEN 'PASAPORTE'
			 ELSE ''
			END AS TIPO_DOCUMENTO
			,TRIM(UPPER(P.NOMBREUNOTRAMAINPUT)) AS NOMBRE
			,COALESCE(P.FNACTRAMAINPUT,'') AS FECHA_NACIMIENTO
			,'ASEGURADO' AS PARENTESCO
			,CURRENT_TIMESTAMP AS FECHA_CREACION
			,CURRENT_TIMESTAMP AS FECHA_MODIFICACION
		FROM `iter-data-storage-pv-uat.acsele_data.TD_POLIZA_ASEGURADO_DESGTARJETASIND_raw`  P
    	WHERE P.STATUS_OPERATION='Applied operation'
		QUALIFY (RANK()OVER(PARTITION BY P.NUMERO_POLIZA ORDER BY P.OPERATION_DATETIME DESC , P.NUMERO_OPERACION DESC))=1 
	)POL 
INNER JOIN `iter-data-storage-pv-uat.config_data.CNF_AGRUPACION_PRODUCTO` AP 
    ON CAST(AP.ID_PRODUCTO AS INT64) = CAST(POL.ID_PRODUCTO AS INT64) 
	AND AP.ID_FUENTE  = '01' 
	AND AP.ID_PRODUCTO='73585'
LEFT JOIN `iter-data-storage-pv-uat.config_data.CNF_EQUIVALENCIA_GLOBAL` EG1 
      ON EG1.VALOR_ORIGEN = POL.ID_TIPO_DOCUMENTO 
      AND EG1.ID_FUENTE    ='01' 
	  	AND EG1.CODIGO_TIPO ='TIPODOC'

UNION ALL 

-------------------------------------------------------------------------------------------
-- BETTERFLY
-------------------------------------------------------------------------------------------

SELECT 
	 POL.ID_FUENTE
	,POL.ID_ROL
	,CONCAT('03', '-', POL.ID_TIPO_DOCUMENTO, '-', POL.NUMERO_DOCUMENTO)  AS ID_PERSONA
	,upper(to_hex(sha256(CONCAT(EG1.CODIGO_CORPORATIVO,LPAD(POL.NUMERO_DOCUMENTO,15,'0'))))) HASH_ID
    ,POL.NUMERO_POLIZA
	,POL.ID_PRODUCTO
	,AP.NOMBRE_PRODUCTO
	,AP.NOMBRE_GRUPO_PRODUCTO
    ,POL.ID_TIPO_DOCUMENTO
    ,POL.TIPO_DOCUMENTO
    ,POL.NUMERO_DOCUMENTO
    ,POL.APELLIDO_PATERNO
    ,POL.APELLIDO_MATERNO
    ,POL.NOMBRE
    ,' ' AS RAZON_SOCIAL
    ,SAFE_CAST(POL.FECHA_NACIMIENTO AS DATE) AS FECHA_NACIMIENTO
    ,SAFE_CAST(NULL AS DATE) AS FECHA_FALLECIMIENTO
    ,'00' AS ID_GENERO
    ,POL.GENERO
    ,'00' AS ID_ESTADO_CIVIL
    ,'SIN ESPECIFICAR' AS ESTADO_CIVIL
    ,'' AS PROFESION
    ,'' AS NACIONALIDAD
    ,'' AS CENTRO_TRABAJO
    ,'00' AS ID_CONDICION_FUMADOR
    ,'' AS CONDICION_FUMADOR
    ,'' AS CUSPP
    ,'' AS CODIGO_AFP
    ,POL.PARENTESCO
    ,'' AS ID_PADRE
    ,POL.FECHA_CREACION
    ,POL.FECHA_MODIFICACION
, -1 AS ID_ASEGURADO
FROM (
		SELECT  
		    '01' AS ID_FUENTE
			,'03' AS ID_ROL
			,CAST (P.ID_PRODUCTO AS STRING) AS ID_PRODUCTO
			,CASE WHEN TRIM(P.TIPODOCTRAMAINPUT)='Documento de Identidad' THEN '01'
			 WHEN TRIM(P.TIPODOCTRAMAINPUT)='Carnet de Extranjeria' THEN '02'
			 WHEN TRIM(P.TIPODOCTRAMAINPUT)='Pasaporte' THEN '04'
			 ELSE ''
			END AS ID_TIPO_DOCUMENTO
			,IFNULL(TRIM(P.NUMERODOCTRAMAINPUT),'') AS NUMERO_DOCUMENTO
			,TRIM(P.NUMERO_POLIZA) AS NUMERO_POLIZA
			,CASE WHEN TRIM(P.TIPODOCTRAMAINPUT)='Documento de Identidad' THEN 'DOCUMENTO NACIONAL DE IDENTIDAD'
			 WHEN TRIM(P.TIPODOCTRAMAINPUT)='Carnet de Extranjeria' THEN 'CARNET DE EXTRANJERIA'
			 WHEN TRIM(P.TIPODOCTRAMAINPUT)='Pasaporte' THEN 'PASAPORTE'
			 ELSE ''
			END AS TIPO_DOCUMENTO
			,TRIM(UPPER(P.NOMBREUNOTRAMAINPUT)) AS NOMBRE
			,TRIM(UPPER(P.APELLIDOUNOTRAMAINPUT)) AS APELLIDO_PATERNO
			,TRIM(UPPER(P.APELLIDODOSTRAMAINPUT)) AS APELLIDO_MATERNO
			,COALESCE(P.FNACTRAMAINPUT,'') AS FECHA_NACIMIENTO
			,UPPER(COALESCE(P.SEXOTRAMAINPUT,'')) AS GENERO
			,'ASEGURADO' AS PARENTESCO
			,CURRENT_TIMESTAMP AS FECHA_CREACION
			,CURRENT_TIMESTAMP AS FECHA_MODIFICACION
		FROM `iter-data-storage-pv-uat.acsele_data.TD_POLIZA_ASEGURADO_BETTERFLY_raw`  P
    	WHERE P.STATUS_OPERATION='Applied operation'
		QUALIFY (RANK()OVER(PARTITION BY P.NUMERO_POLIZA ORDER BY P.OPERATION_DATETIME DESC , P.NUMERO_OPERACION DESC))=1 
	)POL 
INNER JOIN `iter-data-storage-pv-uat.config_data.CNF_AGRUPACION_PRODUCTO` AP 
    ON CAST(AP.ID_PRODUCTO AS INT64) = CAST(POL.ID_PRODUCTO AS INT64) 
	AND AP.ID_FUENTE  = '01' 
	AND AP.ID_PRODUCTO='78029'
LEFT JOIN `iter-data-storage-pv-uat.config_data.CNF_EQUIVALENCIA_GLOBAL` EG1 
      ON EG1.VALOR_ORIGEN = POL.ID_TIPO_DOCUMENTO 
      AND EG1.ID_FUENTE    ='01' 
	  	AND EG1.CODIGO_TIPO ='TIPODOC';


-- ----------------------------------------------------------------------
-- Paso A17: DELETE DE LOS ASEGURADOS DE ACSELE POR POLIZA
-- Reemplazar temp por goldenrecord_data de POLIZA_ASEGURADO_PRUEBAS
-- ----------------------------------------------------------------------
 DELETE FROM `iter-data-storage-pv-uat.goldenrecord_data.ASEGURADO` A 
      WHERE EXISTS (
        SELECT 1 
         FROM `iter-data-storage-pv-uat.temp.TMP_POLIZA_ASEGURADO_ACSELE` B 
         WHERE A.NUMERO_POLIZA  = B.NUMERO_POLIZA 
		 AND   COALESCE(A.ID_PRODUCTO,'')	= COALESCE(B.ID_PRODUCTO,'')
);

-- ----------------------------------------------------------------------
-- Paso A18: DELETE DE LOS ASEGURADOS DE ACSELE POR POLIZA
-- ----------------------------------------------------------------------

INSERT INTO `iter-data-storage-pv-uat.goldenrecord_data.ASEGURADO` 
(
	ID_PERSONA
	,ID_ROL
    ,NUMERO_POLIZA
    ,ID_TIPO_DOCUMENTO
    ,TIPO_DOCUMENTO
    ,NUMERO_DOCUMENTO
    ,APELLIDO_PATERNO
    ,APELLIDO_MATERNO
    ,NOMBRE
    ,RAZON_SOCIAL
    ,FECHA_NACIMIENTO
    ,FECHA_FALLECIMIENTO
    ,ID_GENERO
    ,GENERO
    ,ID_ESTADO_CIVIL
    ,ESTADO_CIVIL
    ,PROFESION
    ,NACIONALIDAD
    ,CENTRO_TRABAJO
    ,ID_CONDICION_FUMADOR
    ,CONDICION_FUMADOR
    ,CUSPP
    ,AFP
    ,PARENTESCO
		,HASH_ID
    ,ID_PADRE
    ,FECHA_CREACION
    ,FECHA_MODIFICACION
	,ID_FUENTE
	,ID_PRODUCTO
	,NOMBRE_PRODUCTO
	,NOMBRE_GRUPO_PRODUCTO
	,ID_ASEGURADO
)
SELECT 
    TAB.ID_PERSONA
	,TAB.ID_ROL
    ,TAB.NUMERO_POLIZA
    ,TAB.ID_TIPO_DOCUMENTO
    ,TAB.TIPO_DOCUMENTO
    ,TAB.NUMERO_DOCUMENTO
    ,TAB.APELLIDO_PATERNO
    ,TAB.APELLIDO_MATERNO
    ,TAB.NOMBRE
    ,TAB.RAZON_SOCIAL
    ,TAB.FECHA_NACIMIENTO
    ,TAB.FECHA_FALLECIMIENTO
    ,TAB.ID_GENERO
    ,TAB.GENERO
    ,TAB.ID_ESTADO_CIVIL
    ,TAB.ESTADO_CIVIL
    ,TAB.PROFESION
    ,TAB.NACIONALIDAD
    ,TAB.CENTRO_TRABAJO
    ,TAB.ID_CONDICION_FUMADOR
    ,TAB.CONDICION_FUMADOR
    ,TAB.CUSPP
    ,TAB.CODIGO_AFP
    ,TAB.PARENTESCO
		,TAB.HASH_ID
    ,TAB.ID_PADRE
    ,TAB.FECHA_CREACION
    ,CURRENT_TIMESTAMP() AS FECHA_MODIFICACION
	,TAB.ID_FUENTE
	,TAB.ID_PRODUCTO
	,TAB.NOMBRE_PRODUCTO
	,TAB.NOMBRE_GRUPO_PRODUCTO
	,TAB.ID_ASEGURADO
 FROM `iter-data-storage-pv-uat.temp.TMP_POLIZA_ASEGURADO_ACSELE` TAB
;


-- ================================================================================================ 
-- ***                             VIDA CASH - VIAJES                                           *** 
-- ================================================================================================ 

-------------------------------------------------------------------------------------------
-- VIDA CASH 
-------------------------------------------------------------------------------------------

CREATE OR REPLACE TABLE `iter-data-storage-pv-uat.temp.TMP_POLIZA_ASEGURADO_VC_VIAJES`
AS
 SELECT DISTINCT
  CNF.ID_FUENTE,
  '03' AS ID_ROL,
  CONCAT('03', '-', GL3.CODIGO_GLOBAL, '-', A.NUMERO_DOCUMENTO) AS ID_PERSONA,
	upper(to_hex(sha256(CONCAT(GL3.CODIGO_CORPORATIVO,LPAD(A.NUMERO_DOCUMENTO,15,'0'))))) HASH_ID,
  B.NUMERO_POLIZA,
  '77949' AS ID_PRODUCTO,
  'VIDACASH' AS NOMBRE_PRODUCTO,
  'VIDA' AS NOMBRE_GRUPO_PRODUCTO,
  GL3.CODIGO_GLOBAL         AS ID_TIPO_DOCUMENTO,
  GL3.NOMBRE_GLOBAL         AS TIPO_DOCUMENTO,
  A.NUMERO_DOCUMENTO,
  UPPER(A.APELLIDO_PATERNO) AS APELLIDO_PATERNO,
  UPPER(A.APELLIDO_MATERNO) AS APELLIDO_MATERNO,
  UPPER(A.NOMBRE)           AS NOMBRE,
  (CASE WHEN A.ID_TIPO_DOCUMENTO=3 
        THEN UPPER(A.NOMBRE) 
	    ELSE CAST(NULL AS STRING) 
  END)                   AS RAZON_SOCIAL,
  SAFE_CAST(A.FECHA_NACIMIENTO AS DATE) AS FECHA_NACIMIENTO,
  CAST(NULL AS DATE)     AS FECHA_FALLECIMIENTO,
  GL1.CODIGO_GLOBAL      AS ID_GENERO,
  GL1.NOMBRE_GLOBAL      AS GENERO,
  CAST(NULL AS STRING)   AS ID_ESTADO_CIVIL,
  CAST(NULL AS STRING)   AS ESTADO_CIVIL,
  CAST(NULL AS STRING)   AS PROFESION,
  CAST(NULL AS STRING)   AS NACIONALIDAD,
  CAST(NULL AS STRING)   AS CENTRO_TRABAJO,
  GL4.CODIGO_GLOBAL      AS ID_CONDICION_FUMADOR,
  GL4.NOMBRE_GLOBAL      AS CONDICION_FUMADOR,
  CAST(NULL AS STRING)   AS CUSPP,
  CAST(NULL AS STRING)   AS AFP,
  'ASEGURADO' AS PARENTESCO,
  ' ' AS ID_PADRE,
  TIMESTAMP(A.FECHA_CREA)  AS FECHA_CREACION,
  TIMESTAMP(A.FECHA_MODIF) AS FECHA_MODIFICACION
        FROM vidacash_data.CLIENTE_raw A
  INNER JOIN vidacash_data.POLIZA_raw B
          ON A.ID_CLIENTE      =B.ID_CLIENTE
 LEFT JOIN config_data.CNF_EQUIVALENCIA_GLOBAL GL1 
        ON GL1.VALOR_ORIGEN    =A.SEXO 
       AND GL1.ID_FUENTE       ='10' 
       AND GL1.CODIGO_TIPO     ='GENERO'
 LEFT JOIN config_data.CNF_EQUIVALENCIA_GLOBAL GL3 
        ON GL3.VALOR_ORIGEN    =CAST(A.ID_TIPO_DOCUMENTO AS STRING)
       AND GL3.ID_FUENTE       ='10' 
       AND GL3.CODIGO_TIPO     ='TIPODOC'
 LEFT JOIN config_data.CNF_EQUIVALENCIA_GLOBAL GL4 
        ON GL4.VALOR_ORIGEN    =CAST(B.CONDICION_FUMADOR AS STRING)
       AND GL4.ID_FUENTE       ='10' 
       AND GL4.CODIGO_TIPO     ='FUMADOR'
  CROSS JOIN (SELECT ID_FUENTE
                   ,ID_PRODUCTO
                   ,NOMBRE_PRODUCTO
                   ,ID_GRUPO_PRODUCTO
                   ,NOMBRE_GRUPO_PRODUCTO
               FROM config_data.CNF_AGRUPACION_PRODUCTO 
              WHERE ID_FUENTE        ='10'
                AND ID_PRODUCTO      ='VIDACASH'
	          )CNF 
  WHERE TRIM(COALESCE(B.NUMERO_POLIZA,''))<>'' 
    AND TRIM(COALESCE(A.NUMERO_DOCUMENTO,''))<>''
		AND TRIM(B.NUMERO_POLIZA) NOT IN (SELECT NUMERO_POLIZA FROM `iter-data-storage-pv-uat.goldenrecord_data.ASEGURADO` )
UNION ALL 

-------------------------------------------------------------------------------------------
-- VIAJES    
-------------------------------------------------------------------------------------------
SELECT DISTINCT
  CNF.ID_FUENTE
 ,'03' ID_ROL
 ,CONCAT('03', '-',  GL1.CODIGO_GLOBAL, '-',  A.numero_documento) ID_PERSONA
 ,upper(to_hex(sha256(CONCAT(GL1.CODIGO_CORPORATIVO,LPAD(A.NUMERO_DOCUMENTO,15,'0'))))) HASH_ID
 ,B.NUMERO_POLIZA
 ,CNF.ID_PRODUCTO -- VERIFICAR ESTA COMO VIAJE TALVEZ TENGA CODIGO 
 ,CNF.NOMBRE_PRODUCTO
 ,CNF.NOMBRE_GRUPO_PRODUCTO

 ,GL1.CODIGO_GLOBAL  AS ID_TIPO_DOCUMENTO
 ,GL1.NOMBRE_GLOBAL  AS TIPO_DOCUMENTO

 ,A.NUMERO_DOCUMENTO

 ,UPPER(A.APELLIDO_PATERNO) AS APELLIDO_PATERNO
 ,UPPER(A.APELLIDO_MATERNO) AS APELLIDO_MATERNO

 ,CASE WHEN GL1.CODIGO_GLOBAL = '03' THEN CAST(NULL AS STRING) ELSE UPPER(A.nombres) END AS NOMBRE
--GL1.CODIGO_GLOBAL= '03' --> PARENTESCO
 ,CASE WHEN GL1.CODIGO_GLOBAL = '03' THEN UPPER(A.nombres) ELSE CAST(NULL AS STRING) END RAZON_SOCIAL
 
 ,SAFE_CAST(A.FECHA_NACIMIENTO AS DATE) AS FECHA_NACIMIENTO
 ---,FECHA_FALLECIMIENTO
 --,B.CORREO
 --,B.datos_culqi_marca_tarjeta ---> VISA, DINNERS, ETC

  ,CAST(NULL AS DATE)     AS FECHA_FALLECIMIENTO
  ,CAST(NULL AS STRING)   AS ID_GENERO
  ,CAST(NULL AS STRING)   AS GENERO
  ,CAST(NULL AS STRING)   AS ID_ESTADO_CIVIL
  ,CAST(NULL AS STRING)   AS ESTADO_CIVIL
  ,CAST(NULL AS STRING)   AS PROFESION
  ,CAST(NULL AS STRING)   AS NACIONALIDAD
  ,CAST(NULL AS STRING)   AS CENTRO_TRABAJO
  ,CAST(NULL AS STRING)   AS ID_CONDICION_FUMADOR
  ,CAST(NULL AS STRING)   AS CONDICION_FUMADOR
  ,CAST(NULL AS STRING)   AS CUSPP
  ,CAST(NULL AS STRING)   AS AFP

 
 , 'ASEGURADO' AS PARENTESCO
 ,'' AS ID_PADRE

 ,CURRENT_TIMESTAMP() FECHA_CREACION --- VERIFICAR ESTO 
 ,SAFE_CAST(NULL AS TIMESTAMP) FECHA_MODIFICACION   -->FECHA_MODIFICACION
 
  FROM iter-data-storage-pv-uat.traveldb_data.cliente_venta_raw A
  INNER JOIN iter-data-storage-pv-uat.traveldb_data.venta_raw B 
  ON A.id_venta = B._id 

  LEFT JOIN config_data.CNF_EQUIVALENCIA_GLOBAL GL1 
  ON CAST(A.tipo_documento AS STRING) = GL1.VALOR_ORIGEN 
  AND GL1.ID_FUENTE = '07' 
  AND GL1.CODIGO_TIPO = 'TIPODOC'

  LEFT JOIN config_data.CNF_EQUIVALENCIA_GLOBAL GL2 
  ON A.flag_titular = GL2.VALOR_ORIGEN 
  AND GL2.ID_FUENTE = '07' 
  AND GL2.CODIGO_TIPO = 'PARENT'

  CROSS JOIN (SELECT ID_FUENTE
                   ,ID_PRODUCTO
                   ,NOMBRE_PRODUCTO
                   ,ID_GRUPO_PRODUCTO
                   ,NOMBRE_GRUPO_PRODUCTO
               FROM config_data.CNF_AGRUPACION_PRODUCTO 
              WHERE ID_FUENTE        ='07'
                AND ID_PRODUCTO      ='VIAJE'
	          ) CNF 
		WHERE A.flag_titular = '0' AND NUMERO_POLIZA IS NOT NULL

;
-- ----------------------------------------------------------------------
-- Paso B10: DELETE DE LOS ASEGURADOS DE VC Y VIAJES POR POLIZA
-- Reemplazar temp por goldenrecord_data de POLIZA_ASEGURADO_PRUEBAS
-- ----------------------------------------------------------------------
 DELETE FROM `iter-data-storage-pv-uat.goldenrecord_data.ASEGURADO` A
      WHERE EXISTS (
        SELECT 1 
         FROM `iter-data-storage-pv-uat.temp.TMP_POLIZA_ASEGURADO_VC_VIAJES` B 
         WHERE A.NUMERO_POLIZA  = B.NUMERO_POLIZA 
		     --  AND COALESCE(A.ID_PRODUCTO,'')	= COALESCE(B.ID_PRODUCTO,'')
);

-- ----------------------------------------------------------------------
-- Paso B11: DELETE DE LOS ASEGURADOS POR POLIZA
-- ----------------------------------------------------------------------

INSERT INTO `iter-data-storage-pv-uat.goldenrecord_data.ASEGURADO` 
(
	ID_PERSONA
	,ID_ROL
    ,NUMERO_POLIZA
    ,ID_TIPO_DOCUMENTO
    ,TIPO_DOCUMENTO
    ,NUMERO_DOCUMENTO
    ,APELLIDO_PATERNO
    ,APELLIDO_MATERNO
    ,NOMBRE
    ,RAZON_SOCIAL
    ,FECHA_NACIMIENTO
    ,FECHA_FALLECIMIENTO
    ,ID_GENERO
    ,GENERO
    ,ID_ESTADO_CIVIL
    ,ESTADO_CIVIL
    ,PROFESION
    ,NACIONALIDAD
    ,CENTRO_TRABAJO
    ,ID_CONDICION_FUMADOR
    ,CONDICION_FUMADOR
    ,CUSPP
    ,AFP
    ,PARENTESCO
		,HASH_ID
    ,ID_PADRE
    ,FECHA_CREACION
    ,FECHA_MODIFICACION
	,ID_FUENTE
	,ID_PRODUCTO
	,NOMBRE_PRODUCTO
	,NOMBRE_GRUPO_PRODUCTO
)
SELECT 
    TAB.ID_PERSONA
	,TAB.ID_ROL
    ,TAB.NUMERO_POLIZA
    ,TAB.ID_TIPO_DOCUMENTO
    ,TAB.TIPO_DOCUMENTO
    ,TAB.NUMERO_DOCUMENTO
    ,TAB.APELLIDO_PATERNO
    ,TAB.APELLIDO_MATERNO
    ,TAB.NOMBRE
    ,TAB.RAZON_SOCIAL
    ,TAB.FECHA_NACIMIENTO
    ,TAB.FECHA_FALLECIMIENTO
    ,TAB.ID_GENERO
    ,TAB.GENERO
    ,TAB.ID_ESTADO_CIVIL
    ,TAB.ESTADO_CIVIL
    ,TAB.PROFESION
    ,TAB.NACIONALIDAD
    ,TAB.CENTRO_TRABAJO
    ,TAB.ID_CONDICION_FUMADOR
    ,TAB.CONDICION_FUMADOR
    ,TAB.CUSPP
    ,TAB.AFP
    ,TAB.PARENTESCO
		,TAB.HASH_ID
    ,TAB.ID_PADRE
    ,TAB.FECHA_CREACION
    ,CURRENT_TIMESTAMP() AS FECHA_MODIFICACION
	,TAB.ID_FUENTE
	,TAB.ID_PRODUCTO
	,TAB.NOMBRE_PRODUCTO
	,TAB.NOMBRE_GRUPO_PRODUCTO
 FROM `iter-data-storage-pv-uat.temp.TMP_POLIZA_ASEGURADO_VC_VIAJES` TAB
;

 DROP TABLE IF EXISTS`iter-data-storage-pv-uat.temp.TMP_POLIZA_ASEGURADO_VC_VIAJES`;
 DROP TABLE IF EXISTS`iter-data-storage-pv-uat.temp.TMP_PERSONA_ASEGURADO_DOCUMENTOS` ;
 DROP TABLE IF EXISTS`iter-data-storage-pv-uat.temp.TMP_PERSONA_ASEGURADO_DATOS` ;
 DROP TABLE IF EXISTS`iter-data-storage-pv-uat.temp.TMP_PERSONA_ASEGURADO_ACSELE_UNI` ; 
 DROP TABLE IF EXISTS`iter-data-storage-pv-uat.temp.TMP_POLIZA_ASEGURADO_ACSELE`;

SELECT 'OK' AS EJECUCION;
END;