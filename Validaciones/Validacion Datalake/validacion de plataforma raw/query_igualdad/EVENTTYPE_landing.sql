SELECT SUM(CASE WHEN PROD.eventtypeid!=UAT.eventtypeid THEN 1 ELSE 0 END) AS DIFF_eventtypeid
,SUM(CASE WHEN PROD.lifecycleid!=UAT.lifecycleid THEN 1 ELSE 0 END) AS DIFF_lifecycleid
,SUM(CASE WHEN TRIM(UPPER(PROD.description))!=TRIM(UPPER(UAT.description)) THEN 1 ELSE 0 END) AS DIFF_description
,SUM(CASE WHEN PROD.category!=UAT.category THEN 1 ELSE 0 END) AS DIFF_category
,SUM(CASE WHEN PROD.statefromid!=UAT.statefromid THEN 1 ELSE 0 END) AS DIFF_statefromid
,SUM(CASE WHEN PROD.statetoid!=UAT.statetoid THEN 1 ELSE 0 END) AS DIFF_statetoid
,SUM(CASE WHEN PROD.eventformtypeid!=UAT.eventformtypeid THEN 1 ELSE 0 END) AS DIFF_eventformtypeid
,SUM(CASE WHEN PROD.operationtypeid!=UAT.operationtypeid THEN 1 ELSE 0 END) AS DIFF_operationtypeid
,SUM(CASE WHEN PROD.specialeval!=UAT.specialeval THEN 1 ELSE 0 END) AS DIFF_specialeval
,SUM(CASE WHEN PROD.reinsure!=UAT.reinsure THEN 1 ELSE 0 END) AS DIFF_reinsure
,SUM(CASE WHEN PROD.coinsure!=UAT.coinsure THEN 1 ELSE 0 END) AS DIFF_coinsure
,SUM(CASE WHEN TRIM(UPPER(PROD.automaticdate))!=TRIM(UPPER(UAT.automaticdate)) THEN 1 ELSE 0 END) AS DIFF_automaticdate
,SUM(CASE WHEN PROD.ett_isactive!=UAT.ett_isactive THEN 1 ELSE 0 END) AS DIFF_ett_isactive
,SUM(CASE WHEN PROD.ett_isautomatic!=UAT.ett_isautomatic THEN 1 ELSE 0 END) AS DIFF_ett_isautomatic
,SUM(CASE WHEN PROD.ett_level!=UAT.ett_level THEN 1 ELSE 0 END) AS DIFF_ett_level
,SUM(CASE WHEN PROD.status!=UAT.status THEN 1 ELSE 0 END) AS DIFF_status
,SUM(CASE WHEN PROD.ett_flowtable!=UAT.ett_flowtable THEN 1 ELSE 0 END) AS DIFF_ett_flowtable
,SUM(CASE WHEN PROD.ett_generategvt!=UAT.ett_generategvt THEN 1 ELSE 0 END) AS DIFF_ett_generategvt
,SUM(CASE WHEN PROD.ett_editabledate!=UAT.ett_editabledate THEN 1 ELSE 0 END) AS DIFF_ett_editabledate
,SUM(CASE WHEN PROD.ett_sendtouaa!=UAT.ett_sendtouaa THEN 1 ELSE 0 END) AS DIFF_ett_sendtouaa
,SUM(CASE WHEN PROD.ett_generatenumber!=UAT.ett_generatenumber THEN 1 ELSE 0 END) AS DIFF_ett_generatenumber
,SUM(CASE WHEN TRIM(UPPER(PROD.effectivedate))!=TRIM(UPPER(UAT.effectivedate)) THEN 1 ELSE 0 END) AS DIFF_effectivedate
,SUM(CASE WHEN PROD.ett_editableeffectivedate!=UAT.ett_editableeffectivedate THEN 1 ELSE 0 END) AS DIFF_ett_editableeffectivedate
,SUM(CASE WHEN PROD.ett_dateoperation!=UAT.ett_dateoperation THEN 1 ELSE 0 END) AS DIFF_ett_dateoperation
,SUM(CASE WHEN PROD.ett_financialplan!=UAT.ett_financialplan THEN 1 ELSE 0 END) AS DIFF_ett_financialplan
,SUM(CASE WHEN PROD.ett_premiumredistribution!=UAT.ett_premiumredistribution THEN 1 ELSE 0 END) AS DIFF_ett_premiumredistribution
,SUM(CASE WHEN TRIM(UPPER(PROD.ett_collection))!=TRIM(UPPER(UAT.ett_collection)) THEN 1 ELSE 0 END) AS DIFF_ett_collection
,SUM(CASE WHEN TRIM(UPPER(PROD.ett_commission))!=TRIM(UPPER(UAT.ett_commission)) THEN 1 ELSE 0 END) AS DIFF_ett_commission
,SUM(CASE WHEN PROD.ett_simulation!=UAT.ett_simulation THEN 1 ELSE 0 END) AS DIFF_ett_simulation
,SUM(CASE WHEN PROD.ett_automaticeventid!=UAT.ett_automaticeventid THEN 1 ELSE 0 END) AS DIFF_ett_automaticeventid
,SUM(CASE WHEN PROD.ett_generateprojection!=UAT.ett_generateprojection THEN 1 ELSE 0 END) AS DIFF_ett_generateprojection