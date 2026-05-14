/***********************************************************************
Developer name: Ms Sara Mohammed Meraj Zaki
Job position: Data Scientist ABC SDN BHD
Program name: my_dap_program_TP081063.sas
Description: Loan application approval status prediction -1 -2 lines
Date first written: Mon, 2-Dec-2024
Data last updated: Mon, 12-Feb-2025
Folder name: DAP_FT_OCTOCBER_2024_TP081063
Library name: DAP_ASS (SAS permanent library or user-defined library)
 ************************************************************************/

/************************************************************* CHAPTER 6 - Analysis of the variable *************************************************************/
/* Extract the TRANNING_DS’s metadata/data dictionary */
PROC CONTENTS DATA=DAP_ASS.TRAINING_DS;
RUN;

/* Extract the TRANNING_DS’s metadata/data dictionary */
PROC SQL;
DESCRIBE TABLE DAP_ASS.TRAINING_DS;
RUN;
	
/* For the CATEGORICAL VARIABLE */ 
/* CATEGORICAL VARIABLE - MARITAL_STATUS */
TITLE 'Univariate Analysis of the Categorical Variable - marital_status';

PROC FREQ DATA=DAP_ASS.TRAINING_DS;
TABLE marital_status;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA=DAP_ASS.TRAINING_DS;
VBAR marital_status;
TITLE 'Univariate Analysis of the Categorical Variable: marital_status';
RUN;

/* CATEGORICAL VARIABLE - GENDER */
TITLE 'Univariate Analysis of the Categorical Variable - gender';

PROC FREQ DATA=DAP_ASS.TRAINING_DS;
TABLE gender;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA=DAP_ASS.TRAINING_DS;
VBAR gender;
TITLE 'Univariate Analysis of the Categorical Variable: gender';
RUN;


/* CATEGORICAL VARIABLE - FAMILY_MEMBERS */
TITLE 'Univariate Analysis of the Categorical Variable - family_members';

PROC FREQ DATA=DAP_ASS.TRAINING_DS;
TABLE family_members;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA=DAP_ASS.TRAINING_DS;
VBAR family_members;
TITLE 'Univariate Analysis of the Categorical Variable: family_members';
RUN;

/* CATEGORICAL VARIABLE - EMPLOYMENT */
TITLE 'Univariate Analysis of the Categorical Variable - employment';

PROC FREQ DATA=DAP_ASS.TRAINING_DS;
TABLE employment;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA=DAP_ASS.TRAINING_DS;
VBAR employment;
TITLE 'Univariate Analysis of the Categorical Variable: employment';
RUN;

/* CATEGORICAL VARIABLE - QUALIFICATION */
TITLE 'Univariate Analysis of the Categorical Variable - qualification';

PROC FREQ DATA=DAP_ASS.TRAINING_DS;
TABLE qualification;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA=DAP_ASS.TRAINING_DS;
VBAR qualification;
TITLE 'Univariate Analysis of the Categorical Variable: qualification';
RUN;

/* CATEGORICAL VARIABLE - LOAN_LOCATION */
TITLE 'Univariate Analysis of the Categorical Variable - loan_location';

PROC FREQ DATA=DAP_ASS.TRAINING_DS;
TABLE loan_location;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA=DAP_ASS.TRAINING_DS;
VBAR loan_location;
TITLE 'Univariate Analysis of the Categorical Variable: loan_location';
RUN;

/* CATEGORICAL VARIABLE - LOAN_APPROVAL_STATUS */
TITLE 'Univariate Analysis of the Categorical Variable - loan_approval_status';

PROC FREQ DATA=DAP_ASS.TRAINING_DS;
TABLE loan_approval_status;
RUN;

ODS GRAPHICS / RESET WIDTH=3.0 IN HEIGHT=4.0 IN IMAGEMAP;

PROC SGPLOT DATA=DAP_ASS.TRAINING_DS;
VBAR loan_approval_status;
TITLE 'Univariate Analysis of the Categorical Variable: loan_approval_status';
RUN;

/* For the CONTINUOUS/NUMERIC VARIABLE */
/* CONTINUOUS/NUMERIC VARIABLE - CANDIDATE_INCOME */
TITLE 'Univariate Analysis of the Continuous Variable - candidate_income';

PROC MEANS DATA=DAP_ASS.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;
VAR candidate_income;
RUN;

ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP; 

PROC SGPLOT DATA=DAP_ASS.TRAINING_DS;
HISTOGRAM candidate_income;
TITLE 'Univariate Analysis of the Continuous Variable: candidate_income';
RUN; 

/* CONTINUOUS/NUMERIC VARIABLE - GUARANTEE_INCOME */
TITLE 'Univariate Analysis of the Continuous Variable - guarantee_income';

PROC MEANS DATA=DAP_ASS.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;
VAR guarantee_income;
RUN;

ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;

PROC SGPLOT DATA=DAP_ASS.TRAINING_DS;
HISTOGRAM guarantee_income;
TITLE 'Univariate Analysis of the Continuous Variable: guarantee_income';
RUN;

/* CONTINUOUS/NUMERIC VARIABLE - LOAN_AMOUNT */
TITLE 'Univariate Analysis of the Continuous Variable - loan_amount';

PROC MEANS DATA=DAP_ASS.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;
VAR loan_amount;
RUN;

ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;

PROC SGPLOT DATA=DAP_ASS.TRAINING_DS;
HISTOGRAM loan_amount;
TITLE 'Univariate Analysis of the Continuous Variable: loan_amount';
RUN;

/* CONTINUOUS/NUMERIC VARIABLE - LOAN_DURATION */
TITLE 'Univariate Analysis of the Continuous Variable - loan_duration';

PROC MEANS DATA=DAP_ASS.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;
VAR loan_duration;
RUN;

ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;

PROC SGPLOT DATA=DAP_ASS.TRAINING_DS;
HISTOGRAM loan_duration;
TITLE 'Univariate Analysis of the Continuous Variable: loan_duration';
RUN;

/* CONTINUOUS/NUMERIC VARIABLE - LOAN_HISTORY */
TITLE 'Univariate Analysis of the Continuous Variable - loan_history';
PROC MEANS DATA=DAP_ASS.TRAINING_DS N NMISS MIN MAX MEAN MEDIAN STD;
VAR loan_history;
RUN;

ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;

PROC SGPLOT DATA=DAP_ASS.TRAINING_DS;
HISTOGRAM loan_history;
TITLE 'Univariate Analysis of the Continuous Variable: loan_history';
RUN;

/* Creation of SAS MACRO */
/* UNIVARIATE ANALYSIS OF THE CATEGORICAL VARIABLES USING SAS MACRO */
OPTIONS MCOMPILENOTE = ALL;
%MACRO macro_uvacate_vari(pdataset_name, pcate_vari_name, ptitle_name); 
TITLE &ptitle_name;

PROC FREQ DATA = &pdataset_name; 

TABLE &pcate_vari_name;

RUN;
%MEND macro_uvacate_vari;

/* TO CALL THE SAS MACRO - macro_uvacate_vari */
%macro_uvacate_vari(DAP_ASS.TESTING_DS, EMPLOYMENT,'Univariate Analysis of the Categorical Variable - EMPLOYMENT');
%macro_uvacate_vari(DAP_ASS.TESTING_DS, GENDER,'Univariate Analysis of the Categorical Variable - GENDER');
%macro_uvacate_vari(DAP_ASS.TESTING_DS, QUALIFICATION,'Univariate Analysis of the Categorical Variable - QUALIFICATION');
%macro_uvacate_vari(DAP_ASS.TESTING_DS, MARITAL_STATUS,'Univariate Analysis of the Categorical Variable - MARITAL_STATUS');
%macro_uvacate_vari(DAP_ASS.TESTING_DS, FAMILY_MEMBERS,'Univariate Analysis of the Categorical Variable - FAMILY_MEMBERS');
%macro_uvacate_vari(DAP_ASS.TESTING_DS, LOAN_LOCATION,'Univariate Analysis of the Categorical Variable - LOAN_LOCATION');

/* UNIVARIATE ANALYSIS OF THE CONTINUOUS VARIABLES USING SAS MACRO */
OPTIONS MCOMPILENOTE = ALL; 
%MACRO UVA_CONTI_VARI(pds_name, pconti_vari_name, ptitle);

TITLE &ptitle;

PROC MEANS DATA = &pds_name N NMISS MIN MAX MEAN MEDIAN STD;
VAR &pconti_vari_name;
RUN;
%MEND UVA_CONTI_VARI;

%UVA_CONTI_VARI(DAP_ASS.TESTING_DS, candidate_income, 'Univariate Analysis of the Continuous Variable - Candidate_Income');
%UVA_CONTI_VARI(DAP_ASS.TESTING_DS, guarantee_income, 'Univariate Analysis of the Continuous Variable - Guarantee_Income');
%UVA_CONTI_VARI(DAP_ASS.TESTING_DS, loan_amount, 'Univariate Analysis of the Continuous Variable - Loan_Amount');
%UVA_CONTI_VARI(DAP_ASS.TESTING_DS, loan_duration, 'Univariate Analysis of the Continuous Variable - Loan_Duration');
%UVA_CONTI_VARI(DAP_ASS.TESTING_DS, loan_history, 'Univariate Analysis of the Categorical Variable - loan_history');

/* BIVARIATE ANALYSIS - TRAINING_DS */
/* BIVARIATE ANALYSIS - CATEGORICAL VARIABLE vs CATEGORICAL VARIABLE - TRAINING_DS*/
OPTIONS MCOMPILENOTE = ALL; 
%MACRO BVA_CATE_CATE(pds_name, pcate_vari_name1, pcate_vari_name2, ptitle1, ptitle2);
TITLE1 &ptitle1;
TITLE2 &ptitle2;

PROC FREQ DATA = &pds_name;

TABLE &pcate_vari_name1 * &pcate_vari_name2/
PLOTS = FREQPLOT ( TWOWAY = STACKED SCALE = GROUPPCT );

RUN;
%MEND BVA_CATE_CATE;

%BVA_CATE_CATE(DAP_ASS.TRAINING_DS, GENDER, MARITAL_STATUS, 'Bivariate Analysis of', 'Gender vs Marital_Status');
%BVA_CATE_CATE(DAP_ASS.TRAINING_DS, GENDER, EMPLOYMENT, 'Bivariate Analysis of', 'Gender vs Employment');
%BVA_CATE_CATE(DAP_ASS.TRAINING_DS, MARITAL_STATUS, FAMILY_MEMBERS, 'Bivariate Analysis of', 'Marital_Status vs Family_Members');
%BVA_CATE_CATE(DAP_ASS.TRAINING_DS, QUALIFICATION, EMPLOYMENT, 'Bivariate Analysis of', 'Qualification vs Employment');


/* BIVARIATE ANALYSIS - CATEGORICAL VARIABLE vs CONTINUOUS VARIABLE TRAINING_DS*/
OPTIONS MCOMPILENOTE = ALL;
%MACRO BVA_CATE_CONTI(pds_name, pcate_vari, pconti_vari, ptitle1, ptitle2);
TITLE1 &ptitle1;
TITLE2 &ptitle2;

PROC MEANS DATA = &pds_name;

CLASS &pcate_vari;
VAR &pconti_vari;

RUN;
%MEND BVA_CATE_CONTI;

%BVA_CATE_CONTI(DAP_ASS.TRAINING_DS, GENDER, CANDIDATE_INCOME, 'Bivariate Analysis of', 'Gender vs Candidate_Income');
%BVA_CATE_CONTI(DAP_ASS.TRAINING_DS, GENDER, LOAN_AMOUNT, 'Bivariate Analysis of', 'Gender vs Loan_Amount');
%BVA_CATE_CONTI(DAP_ASS.TRAINING_DS, MARITAL_STATUS, CANDIDATE_INCOME, 'Bivariate Analysis of', 'Marital_Status vs Candidate_Income');
%BVA_CATE_CONTI(DAP_ASS.TRAINING_DS, MARITAL_STATUS, LOAN_AMOUNT, 'Bivariate Analysis of', 'Marital_Status vs Loan_Amount');

/* BIVARIATE ANALYSIS - TESTING_DS */
/* BIVARIATE ANALYSIS - CATEGORICAL VARIABLE vs CATEGORICAL VARIABLE - TESTING_DS */
OPTIONS MCOMPILENOTE = ALL;
%MACRO BVA_CATE_CATE(pds_name, pcate_vari_name1, pcate_vari_name2, ptitle1, ptitle2);
TITLE1 &ptitle1;
TITLE2 &ptitle2;

PROC FREQ DATA = &pds_name;
        
TABLE &pcate_vari_name1 * &pcate_vari_name2 /
PLOTS = FREQPLOT ( TWOWAY = STACKED SCALE = GROUPPCT );

RUN;
%MEND BVA_CATE_CATE;

%BVA_CATE_CATE(DAP_ASS.TESTING_DS, GENDER, MARITAL_STATUS, 'Bivariate Analysis of', 'Gender vs Marital_Status');
%BVA_CATE_CATE(DAP_ASS.TESTING_DS, GENDER, EMPLOYMENT, 'Bivariate Analysis of', 'Gender vs Employment');
%BVA_CATE_CATE(DAP_ASS.TESTING_DS, MARITAL_STATUS, FAMILY_MEMBERS, 'Bivariate Analysis of', 'Marital_Status vs Family_Members');
%BVA_CATE_CATE(DAP_ASS.TESTING_DS, QUALIFICATION, EMPLOYMENT, 'Bivariate Analysis of', 'Qualification vs Employment');


/* BIVARIATE ANALYSIS - CATEGORICAL VARIABLE vs CONTINUOUS VARIABLE - TESTING_DS */
OPTIONS MCOMPILENOTE = ALL;
%MACRO BVA_CATE_CONTI(pds_name, pcate_vari, pconti_vari, ptitle1, ptitle2);
TITLE1 &ptitle1;
TITLE2 &ptitle2;

PROC MEANS DATA = &pds_name;
        
CLASS &pcate_vari;
VAR &pconti_vari;

RUN;
%MEND BVA_CATE_CONTI;

%BVA_CATE_CONTI(DAP_ASS.TESTING_DS, GENDER, CANDIDATE_INCOME, 'Bivariate Analysis of', 'Gender vs Candidate_Income');
%BVA_CATE_CONTI(DAP_ASS.TESTING_DS, GENDER, LOAN_AMOUNT, 'Bivariate Analysis of', 'Gender vs Loan_Amount');
%BVA_CATE_CONTI(DAP_ASS.TESTING_DS, MARITAL_STATUS, CANDIDATE_INCOME, 'Bivariate Analysis of', 'Marital_Status vs Candidate_Income');
%BVA_CATE_CONTI(DAP_ASS.TESTING_DS, MARITAL_STATUS, LOAN_AMOUNT, 'Bivariate Analysis of', 'Marital_Status vs Loan_Amount');


/************************************************************* CHAPTER 7 - CLEANING *************************************************************/
/* IMPUTE THE MISSING VALUES IN THE DATASET */
/* STEP 1: TO CHECK WHICH MARITAL_STATUS'S ROW IS MISSING */
TITLE1 'STEP 1: List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their marital status';
FOOTNOTE '-------- END --------';

PROC SQL;

SELECT *
FROM DAP_ASS.TRAINING_DS e
WHERE (e.marital_status eq '' OR e.marital_status IS MISSING );

QUIT;

/* STEP 2: TO CHECK HOW MANY ROWS THAT MARITAL_STATUS IS MISSING  */
TITLE1 'STEP 2: Count the number of loan applicants who submitted';
TITLE2 'their loan application without stating their marital status';
FOOTNOTE '-------- END --------';

PROC SQL;

SELECT COUNT(*) Label = 'Counts'
FROM DAP_ASS.TRAINING_DS e
WHERE ( e.marital_status eq '' or e.marital_status IS MISSING );

QUIT;

/* STEP 3: EXTRACT THE STATISTICS AND SAVE IT IN A TEMPORARY DATASET */
PROC SQL ;

CREATE TABLE DAP_ASS.TRAINING_STAT_DS AS
SELECT e.marital_status AS marital_status_name,
		COUNT(*) AS counts
FROM DAP_ASS.TRAINING_DS e
WHERE ( e.marital_status ne '' OR e.marital_status IS NOT MISSING )
GROUP BY e.marital_status; 

QUIT; 

/* STEP 3.1 MAKE A BACK UP*/
PROC SQL;

CREATE TABLE DAP_ASS.TRAINING_BK_DS AS
SELECT *
FROM DAP_ASS.TRAINING_DS; 

QUIT; 

/* CROSS CHECK THE NUMBER IF IT IS CORRECT */
PROC CONTENTS DATA=DAP_ASS.TRAINING_DS;
RUN;
/* NEXT, RUN STEP 3 AGAIN AND DO THE CALCULATION */

/* STEP 4: FIND THE MOD VALUE */ 
PROC SQL;

SELECT tso.marital_status_name as marital_status_name
FROM DAP_ASS.TRAINING_STAT_DS tso
WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
					  FROM DAP_ASS.TRAINING_STAT_DS tsi );
				
QUIT;		

/* STEP 5: IMPUTE THE MISSING VALUES FOUND IN THE CATEGORICAL VARIABLE - MARITAL_STATUS */
PROC SQL; 

UPDATE DAP_ASS.TRAINING_DS
SET marital_status = ( SELECT tso.marital_status_name as marital_status_name
						FROM DAP_ASS.TRAINING_STAT_DS tso
						WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
											  FROM DAP_ASS.TRAINING_STAT_DS tsi ) )
WHERE (marital_status eq '' OR marital_status IS MISSING);

QUIT; 

/* STEP 6 & 7  */
TITLE1 'STEP 6(After Imputation): List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their marital status';
FOOTNOTE '-------- END --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TRAINING_DS e
WHERE (e.marital_status eq '' OR e.marital_status IS MISSING );
QUIT;
TITLE1 'STEP 7(After Imputation): Count the number of loan applicants who submitted';
TITLE2 'their loan application without stating their marital status';
FOOTNOTE '-------- END --------';

PROC SQL;
SELECT COUNT(*) Label = 'Counts'
FROM DAP_ASS.TRAINING_DS e
WHERE ( e.marital_status eq '' or e.marital_status IS MISSING );
QUIT;		

/* STEP 1: TO CHECK WHICH GENDER'S ROW IS MISSING */
TITLE1 'STEP 1: List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their gender';
FOOTNOTE '-------- END --------';

PROC SQL;

SELECT *
FROM DAP_ASS.TRAINING_DS e
WHERE (e.gender eq '' OR e.gender IS MISSING );

QUIT;

/* STEP 2: TO CHECK HOW MANY ROWS THAT GENDER IS MISSING  */
TITLE1 'STEP 2: Count the number of loan applicants who submitted';
TITLE2 'their loan application without stating their gender';
FOOTNOTE '-------- END --------';

PROC SQL;

SELECT COUNT(*) Label = 'Counts'
FROM DAP_ASS.TRAINING_DS e
WHERE ( e.gender eq '' OR e.gender IS MISSING );

QUIT;

/* STEP 3: EXTRACT THE STATISTICS AND SAVE IT IN A TEMPORARY DATASET */
PROC SQL ;

CREATE TABLE DAP_ASS.TRAINING_STAT_DS AS
SELECT e.gender AS gender_name,
		COUNT(*) AS counts
FROM DAP_ASS.TRAINING_DS e
WHERE ( e.gender ne '' OR e.gender IS NOT MISSING )
GROUP BY e.gender; 

QUIT; 

/* STEP 3.1 MAKE A BACK UP */
PROC SQL;

CREATE TABLE DAP_ASS.TRAINING_BK_DS AS
SELECT *
FROM DAP_ASS.TRAINING_DS; 

QUIT; 

/* STEP 4: FIND THE MOD VALUE */ 
PROC SQL;

SELECT tso.gender_name as gender_name
FROM DAP_ASS.TRAINING_STAT_DS tso
WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
				      FROM DAP_ASS.TRAINING_STAT_DS tsi );				
QUIT;	

/* STEP 5: IMPUTE THE MISSING VALUES FOUND IN THE CATEGORICAL VARIABLE - gender */
PROC SQL; 

UPDATE DAP_ASS.TRAINING_DS
SET gender = ( SELECT tso.gender_name as gender_name
			   FROM DAP_ASS.TRAINING_STAT_DS tso
			   WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
									 FROM DAP_ASS.TRAINING_STAT_DS tsi ) )
WHERE (gender eq '' OR gender IS MISSING);

QUIT; 

/* STEP 6 & 7 */
TITLE1 'STEP 6(After Imputation): List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their gender';
FOOTNOTE '-------- END --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TRAINING_DS e
WHERE (e.gender eq '' OR e.gender IS MISSING );
QUIT;
TITLE1 'STEP 7(After Imputation): Count the number of loan applicants who submitted';
TITLE2 'their loan application without stating their gender';
FOOTNOTE '-------- END --------';

PROC SQL;
SELECT COUNT(*) Label = 'Counts'
FROM DAP_ASS.TRAINING_DS e
WHERE ( e.gender eq '' or e.gender IS MISSING );
QUIT;		


/* STEP 1: TO CHECK WHICH FAMILY_MEMBERS'S ROW IS MISSING */
TITLE1 'STEP 1: List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their family members';
FOOTNOTE '-------- END --------';

PROC SQL;

SELECT *
FROM DAP_ASS.TRAINING_DS e
WHERE (e.family_members eq '' OR e.family_members IS MISSING );

QUIT;

/* STEP 2: TO CHECK HOW MANY ROWS THAT FAMILY_MEMBERS IS MISSING  */
TITLE1 'STEP 2: Count the number of loan applicants who submitted';
TITLE2 'their loan application without stating their family members';
FOOTNOTE '-------- END --------';

PROC SQL;

SELECT COUNT(*) Label = 'Total Number of Loan Applicants'
FROM DAP_ASS.TRAINING_DS e
WHERE ( e.family_members eq '' OR e.family_members IS MISSING );

QUIT;

/* STEP 3: REMOVE THE '+' SYMBOL FOUND IN THE FAMIL_MEMBERS DATA */
PROC SQL ;

UPDATE DAP_ASS.TRAINING_DS
SET family_members = SUBSTR (family_members, 1,1);

QUIT; 

/* STEP 4: EXTRACT THE STATISTICS AND SAVE IT IN A TEMPORARY DATASET */
PROC SQL ;

CREATE TABLE DAP_ASS.TRAINING_STAT_DS AS
SELECT e.family_members AS family_members_name,
		COUNT(*) AS counts
FROM DAP_ASS.TRAINING_DS e
WHERE ( e.family_members ne '' OR e.family_members IS NOT MISSING )
GROUP BY e.family_members; 

QUIT; 

/* STEP 4.1 MAKE A BACK UP*/
PROC SQL;

CREATE TABLE DAP_ASS.TRAINING_BK_DS AS
SELECT *
FROM DAP_ASS.TRAINING_DS; 

QUIT; 

/* STEP 5: FIND THE MOD VALUE */ 
PROC SQL;

SELECT tso.family_members_name as family_members_no
FROM DAP_ASS.TRAINING_STAT_DS tso
WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
					  FROM DAP_ASS.TRAINING_STAT_DS tsi );
				
QUIT;	

/* STEP 6: IMPUTE THE MISSING VALUES FOUND IN THE CATEGORICAL VARIABLE - FAMILY_MEMBERS */
PROC SQL; 

UPDATE DAP_ASS.TRAINING_DS
SET family_members = ( SELECT tso.family_members_name as family_members_name
						FROM DAP_ASS.TRAINING_STAT_DS tso
						WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
											  FROM DAP_ASS.TRAINING_STAT_DS tsi ) )
WHERE (family_members eq '' OR family_members IS MISSING);

QUIT; 


/* STEP 1: TO CHECK WHICH EMPLOYMENT'S ROW IS MISSING */
TITLE1 'STEP 1: List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their employment';
FOOTNOTE '-------- END --------';

PROC SQL;

SELECT *
FROM DAP_ASS.TRAINING_DS e
WHERE (e.employment eq '' OR e.employment IS MISSING );

QUIT;

/* STEP 2: TO CHECK HOW MANY ROWS THAT EMPLOYMENT IS MISSING  */
TITLE1 'STEP 2: Count the number of loan applicants who submitted';
TITLE2 'their loan application without stating their employment';
FOOTNOTE '-------- END --------';

PROC SQL;

SELECT COUNT(*) Label = 'Counts'
FROM DAP_ASS.TRAINING_DS e
WHERE ( e.employment eq '' OR e.employment IS MISSING );

QUIT;

/* STEP 3: EXTRACT THE STATISTICS AND SAVE IT IN A TEMPORARY DATASET */
PROC SQL ;

CREATE TABLE DAP_ASS.TRAINING_STAT_DS AS
SELECT e.employment AS employment_status,
		COUNT(*) AS counts
FROM DAP_ASS.TRAINING_DS e
WHERE ( e.employment ne '' OR e.employment IS NOT MISSING )
GROUP BY e.employment; 

QUIT; 

/* STEP 3.1 MAKE A BACK UP */
PROC SQL;

CREATE TABLE DAP_ASS.TRAINING_BK_DS AS
SELECT *
FROM DAP_ASS.TRAINING_DS; 

QUIT; 

/* STEP 4: FIND THE MOD VALUE */ 
PROC SQL;

SELECT tso.employment_status as employment_status
FROM DAP_ASS.TRAINING_STAT_DS tso
WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
					FROM DAP_ASS.TRAINING_STAT_DS tsi );
				
QUIT;	

/* STEP 5: IMPUTE THE MISSING VALUES FOUND IN THE CATEGORICAL VARIABLE - EMPLOYMENT */
PROC SQL; 

UPDATE DAP_ASS.TRAINING_DS
SET employment = ( SELECT tso.employment_status as employment_status
						FROM DAP_ASS.TRAINING_STAT_DS tso
						WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
											  FROM DAP_ASS.TRAINING_STAT_DS tsi ) )
WHERE (employment eq '' OR employment IS MISSING);

QUIT; 

/* STEP 6 & 7 */
TITLE1 'STEP 6(After Imputation): List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their employment';
FOOTNOTE '-------- END --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TRAINING_DS e
WHERE (e.employment eq '' OR e.employment IS MISSING );
QUIT;
TITLE1 'STEP 7(After Imputation): Count the number of loan applicants who submitted';
TITLE2 'their loan application without stating their employment';
FOOTNOTE '-------- END --------';

PROC SQL;
SELECT COUNT(*) Label = 'Counts'
FROM DAP_ASS.TRAINING_DS e
WHERE ( e.employment eq '' or e.employment IS MISSING );
QUIT;		


/* IMPUTE the missing values found in CONTINUOUS VARIABLES */
/* STEP 1: FIND MISSING VALUE FOR CONTINUOUS VARIABLE - LOAN_DURATION */
TITLE1 'STEP 1: List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan duration';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TRAINING_DS e
WHERE ( ( e.loan_duration IS MISSING ) OR 
		( e.loan_duration eq . ) );

QUIT;

/*STEP 2: COUNT THE TOTAL NUMBER OF LOAN_DUTATION */
TITLE1 'STEP 2: Count the total number of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan duration';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT COUNT(*) Label = 'Number of Loan Applicants'
FROM DAP_ASS.TRAINING_DS e
WHERE ( ( e.loan_duration IS MISSING ) OR 
		( e.loan_duration eq . ) );

QUIT;

/* STEP 2.1: MAKE A BACK UP */
PROC SQL;
CREATE TABLE DAP_ASS.TRAINING_BK_DS AS
SELECT * 
FROM DAP_ASS.TRAINING_DS;

QUIT;

/* STEP 3: IMPUTE THE MISSING VALUES FOUND IN THE CONTINUOURS VARIABLE - LOAN_DURATION */;
PROC STDIZE DATA = DAP_ASS.TRAINING_DS REPONLY

METHOD = MEAN OUT = DAP_ASS.TRAINING_DS;
VAR loan_duration;

QUIT;


/* STEP 4 & 5 */
TITLE1 'STEP 4 (After Imputation): List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan duration';
FOOTNOTE '------ End --------';
PROC SQL;
SELECT *
FROM DAP_ASS.TRAINING_DS e
WHERE ( ( e.loan_duration IS MISSING ) OR 
		( e.loan_duration eq . ) );
QUIT;

TITLE1 'STEP 5 (After Imputation): Count the total number of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan duration';
FOOTNOTE '------ End --------';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Loan Applicants'
FROM DAP_ASS.TRAINING_DS e
WHERE ( ( e.loan_duration IS MISSING ) OR 
		( e.loan_duration eq . ) );
QUIT;


/* STEP 1: FIND MISSING VALUE FOR CONTINUOUS VARIABLE - LOAN_AMOUNT */
TITLE1 'STEP 1: List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan amount';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TRAINING_DS e
WHERE ( ( e.loan_amount IS MISSING ) OR 
		( e.loan_amount eq . ) );

QUIT;

/* STEP 2: COUNT THE TOTAL NUMBER OF LOAN_AMOUNT */
TITLE1 'STEP 2: Count the total number of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan amount';
FOOTNOTE '------ End --------';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Loan Applicants'
FROM DAP_ASS.TRAINING_DS e
WHERE ( ( e.loan_amount IS MISSING ) OR 
		( e.loan_amount eq . ) );

QUIT;

/* STEP 2.1: MAKE A BACK UP */
PROC SQL;
CREATE TABLE DAP_ASS.TRAINING_BK_DS AS
SELECT * 
FROM DAP_ASS.TRAINING_DS;

QUIT;

/* STEP 3: IMPUTE THE MISSING VALUES FOUND IN THE CONTINUOURS VARIABLE - LOAN_AMOUNT */;
PROC STDIZE DATA = DAP_ASS.TRAINING_DS REPONLY

METHOD = MEAN OUT = DAP_ASS.TRAINING_DS;
VAR loan_amount;

QUIT;

/* STEP 4 & 5*/
TITLE1 'STEP 4(After Imputation): List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan amount';
FOOTNOTE '------ End --------';
PROC SQL;
SELECT *
FROM DAP_ASS.TRAINING_DS e
WHERE ( ( e.loan_amount IS MISSING ) OR 
		( e.loan_amount eq . ) );
QUIT;

TITLE1 'STEP 5(After Imputation): Count the total number of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan amount';
FOOTNOTE '------ End --------';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Loan Applicants'
FROM DAP_ASS.TRAINING_DS e
WHERE ( ( e.loan_amount IS MISSING ) OR 
		( e.loan_amount eq . ) );
QUIT;


/* STEP 1: FIND MISSING VALUE FOR CONTINUOUS VARIABLE - LOAN_HISTORY */
TITLE1 'STEP 1: List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan history';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TRAINING_DS e
WHERE ( ( e.loan_history IS MISSING ) OR 
		( e.loan_history eq . ) );

QUIT;

/* STEP 2: COUNT THE TOTAL NUMBER OF LOAN_HISTORY */
TITLE1 'STEP 2: Count the total number of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan history';
FOOTNOTE '------ End --------';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Loan Applicants'
FROM DAP_ASS.TRAINING_DS e
WHERE ( ( e.loan_history IS MISSING ) OR 
		( e.loan_history eq . ) );
QUIT;

/* STEP 2.1: MAKE A BACK UP */
PROC SQL;

CREATE TABLE DAP_ASS.TRAINING_BK_DS AS
SELECT * 
FROM DAP_ASS.TRAINING_DS;

QUIT;

/* STEP 3: IMPUTE THE MISSING VALUES FOUND IN THE CONTINUOURS VARIABLE - LOAN_HISTORY */;
PROC STDIZE DATA = DAP_ASS.TRAINING_DS REPONLY

METHOD = MEAN OUT = DAP_ASS.TRAINING_DS;
VAR loan_history;

QUIT;

/* STEP 4 & 5 */
TITLE1 'STEP 4(After Imputation): List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan history';
FOOTNOTE '------ End --------';
PROC SQL;
SELECT *
FROM DAP_ASS.TRAINING_DS e
WHERE ( ( e.loan_history IS MISSING ) OR 
		( e.loan_history eq . ) );
QUIT;

/* STEP 5: CHECK THE MISSING VALUES AGAIN */
TITLE1 'STEP 5(After Imputation): Count the total number of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan history';
FOOTNOTE '------ End --------';
PROC SQL;
SELECT COUNT(*) Label = 'Number of Loan Applicants'
FROM DAP_ASS.TRAINING_DS e
WHERE ( ( e.loan_history IS MISSING ) OR 
		( e.loan_history eq . ) );
QUIT;



/* IMPUTING THE MISSING VALUES IN THE TESTING_DS DATASET FOR CATEGORICAL VARIABLE */
/* STEP 1: TO CHECK WHICH GENDER' ROW IS MISSING */
TITLE1 'STEP 1: List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their gender';
FOOTNOTE '-------- END --------';
PROC SQL;
SELECT *
FROM DAP_ASS.TESTING_DS t
WHERE (t.gender eq '' OR t.gender IS MISSING );
QUIT;

/* STEP 2: TO CHECK HOW MANY ROWS THAT GENDER IS MISSING  */
TITLE1 'STEP 2: Count the number of loan applicants who submitted';
TITLE2 'their loan application without stating their gender';
FOOTNOTE '-------- END --------';
PROC SQL;
SELECT COUNT(*) Label = 'Counts'
FROM DAP_ASS.TESTING_DS t
WHERE ( t.gender eq '' OR t.gender IS MISSING );
QUIT;

/* STEP 3: EXTRACT THE STATISTICS AND SAVE IT IN A TEMPORARY DATASET */
PROC SQL ;

CREATE TABLE DAP_ASS.TESTING_STAT_DS AS
SELECT t.gender AS gender_name,
		COUNT(*) AS counts
FROM DAP_ASS.TESTING_DS t
WHERE ( t.gender ne '' OR t.gender IS NOT MISSING )
GROUP BY t.gender; 

QUIT; 

/* STEP 3.1 MAKE A BACK UP */
PROC SQL;

CREATE TABLE DAP_ASS.TESTING_BK_DS AS
SELECT *
FROM DAP_ASS.TESTING_DS; 

QUIT; 

/* STEP 4: FIND THE MOD VALUE */ 
PROC SQL;

SELECT tso.gender_name AS gender_name
FROM DAP_ASS.TESTING_STAT_DS tso
WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
				      FROM DAP_ASS.TESTING_STAT_DS tsi );
				
QUIT;	

/* STEP 5: IMPUTE THE MISSING VALUES FOUND IN THE CATEGORICAL VARIABLE - gender */
PROC SQL; 

UPDATE DAP_ASS.TESTING_DS
SET gender = ( SELECT tso.gender_name AS gender_name
						FROM DAP_ASS.TESTING_STAT_DS tso
						WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
											 FROM DAP_ASS.TESTING_STAT_DS tsi ) )
WHERE (gender eq '' OR gender IS MISSING);

QUIT; 

/* STEP 6 & 7 */
TITLE1 'STEP 6(After Imputation): List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their gender';
FOOTNOTE '-------- END --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TESTING_DS t
WHERE (t.gender eq '' OR t.gender IS MISSING );
QUIT;

TITLE1 'STEP 7(After Imputation): Count the number of loan applicants who submitted';
TITLE2 'their loan application without stating their gender';
FOOTNOTE '-------- END --------';

PROC SQL;
SELECT COUNT(*) Label = 'Counts'
FROM DAP_ASS.TESTING_DS t
WHERE ( t.gender eq '' or t.gender IS MISSING );
QUIT;		


/* STEP 1: TO CHECK WHICH FAMILY_MEMBERS'S ROW IS MISSING */
TITLE1 'STEP 1: List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their family members';
FOOTNOTE '-------- END --------';

PROC SQL;

SELECT *
FROM DAP_ASS.TESTING_DS t
WHERE (t.family_members eq '' OR t.family_members IS MISSING );

QUIT;

/* STEP 2: TO CHECK HOW MANY ROWS THAT FAMILY_MEMBERS IS MISSING  */
TITLE1 'STEP 2: Count the number of loan applicants who submitted';
TITLE2 'their loan application without stating their family members';
FOOTNOTE '-------- END --------';

PROC SQL;

SELECT COUNT(*) Label = 'Total Number of Loan Applicants'
FROM DAP_ASS.TESTING_DS t
WHERE ( t.family_members eq '' OR t.family_members IS MISSING );

QUIT;

/* STEP 3: REMOVE THE '+' SYMBOL FOUND IN THE FAMIL_MEMBERS DATA */
PROC SQL ;

UPDATE DAP_ASS.TESTING_DS
SET family_members = SUBSTR (family_members, 1,1);

QUIT; 

/* STEP 4: EXTRACT THE STATISTICS AND SAVE IT IN A TEMPORARY DATASET */
PROC SQL ;

CREATE TABLE DAP_ASS.TESTING_STAT_DS AS
SELECT t.family_members AS family_members_name,
		COUNT(*) AS counts
FROM DAP_ASS.TESTING_DS t
WHERE ( t.family_members ne '' OR t.family_members IS NOT MISSING )
GROUP BY t.family_members; 

QUIT; 

/* STEP 4.1 MAKE A BACK UP */
PROC SQL;

CREATE TABLE DAP_ASS.TESTING_BK_DS AS
SELECT *
FROM DAP_ASS.TESTING_DS; 

QUIT; 

/* STEP 5: FIND THE MOD VALUE */ 
PROC SQL;

SELECT tso.family_members_name as family_members_no
FROM DAP_ASS.TESTING_STAT_DS tso
WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
					  FROM DAP_ASS.TESTING_STAT_DS tsi );
				
QUIT;	

/* STEP 6: IMPUTE THE MISSING VALUES FOUND IN THE CATEGORICAL VARIABLE - FAMILY_MEMBERS */
PROC SQL; 

UPDATE DAP_ASS.TESTING_DS
SET family_members = ( SELECT tso.family_members_name as family_members_name
						FROM DAP_ASS.TESTING_STAT_DS tso
						WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
											  FROM DAP_ASS.TESTING_STAT_DS tsi ) )
WHERE (family_members eq '' OR family_members IS MISSING);

QUIT; 


/* STEP 1: TO CHECK WHICH EMPLOYMENT'S ROW IS MISSING */
TITLE1 'STEP 1: List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their employment';
FOOTNOTE '-------- END --------';

PROC SQL;

SELECT *
FROM DAP_ASS.TESTING_DS t
WHERE (t.employment eq '' OR t.employment IS MISSING );

QUIT;

/* STEP 2: TO CHECK HOW MANY ROWS THAT EMPLOYMENT IS MISSING  */
TITLE1 'STEP 2: Count the number of loan applicants who submitted';
TITLE2 'their loan application without stating their employment';
FOOTNOTE '-------- END --------';

PROC SQL;

SELECT COUNT(*) Label = 'Counts'
FROM DAP_ASS.TESTING_DS t
WHERE ( t.employment eq '' OR t.employment IS MISSING );

QUIT;

/* STEP 3: EXTRACT THE STATISTICS AND SAVE IT IN A TEMPORARY DATASET */
PROC SQL ;

CREATE TABLE DAP_ASS.TESTING_STAT_DS AS
SELECT t.employment AS employment_status,
		COUNT(*) AS counts
FROM DAP_ASS.TESTING_DS t
WHERE ( t.employment ne '' OR t.employment IS NOT MISSING )
GROUP BY t.employment; 

QUIT; 

/* STEP 3.1 MAKE A BACK UP */
PROC SQL;

CREATE TABLE DAP_ASS.TESTING_BK_DS AS
SELECT *
FROM DAP_ASS.TESTING_DS; 

QUIT; 

/* STEP 4: FIND THE MOD VALUE */ 
PROC SQL;

SELECT tso.employment_status as employment_status
FROM DAP_ASS.TESTING_STAT_DS tso
WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
				      FROM DAP_ASS.TESTING_STAT_DS tsi );				
QUIT;	

/* STEP 5: IMPUTE THE MISSING VALUES FOUND IN THE CATEGORICAL VARIABLE - EMPLOYMENT */
PROC SQL; 

UPDATE DAP_ASS.TESTING_DS
SET employment = ( SELECT tso.employment_status as employment_status
						FROM DAP_ASS.TESTING_STAT_DS tso
						WHERE tso.counts eq ( SELECT MAX(tsi.counts) AS highest_counts 
											  FROM DAP_ASS.TESTING_STAT_DS tsi ) )
WHERE (employment eq '' OR employment IS MISSING);

QUIT; 

/* STEP 6 & 7*/
TITLE1 'STEP 6(After Imputation): List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their employment';
FOOTNOTE '-------- END --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TESTING_DS t
WHERE (t.employment eq '' OR t.employment IS MISSING );
QUIT;

TITLE1 'STEP 7(After Imputation): Count the number of loan applicants who submitted';
TITLE2 'their loan application without stating their employment';
FOOTNOTE '-------- END --------';

PROC SQL;
SELECT COUNT(*) Label = 'Counts'
FROM DAP_ASS.TESTING_DS t
WHERE ( t.employment eq '' or t.employment IS MISSING );
QUIT;		


/* IMPUTING FOR CONTINUOUS VARIABLES */
/* STEP 1: FIND MISSING VALUE FOR CONTINUOUS VARIABLE - LOAN_DURATION */
TITLE1 'STEP 1: List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan duration';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TESTING_DS t
WHERE ( ( t.loan_duration IS MISSING ) OR 
		( t.loan_duration eq . ) );

QUIT;

/*STEP 2: COUNT THE TOTAL NUMBER OF LOAN_DUTATION */
TITLE1 'STEP 2: Count the total number of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan duration';
FOOTNOTE '------ End --------';

PROC SQL;	
SELECT COUNT(*) Label = 'Number of Loan Applicants'
FROM DAP_ASS.TESTING_DS t
WHERE ( ( t.loan_duration IS MISSING ) OR 
		( t.loan_duration eq . ) );

QUIT;

/* STEP 2.1 MAKE A BACK UP */
PROC SQL;

CREATE TABLE DAP_ASS.TESTING_BK_DS AS
SELECT * 
FROM DAP_ASS.TESTING_DS;

QUIT;

/* STEP 3: IMPUTE THE MISSING VALUES FOUND IN THE CONTINUOUS VARIABLE - LOAN_DURATION */;
PROC STDIZE DATA = DAP_ASS.TESTING_DS REPONLY

METHOD = MEAN OUT = DAP_ASS.TESTING_DS;
VAR loan_duration;

QUIT;

/* STEP 4 & 5 */
TITLE1 'STEP 4(After Imputation): List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan duration';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TESTING_DS t
WHERE ( ( t.loan_duration IS MISSING ) OR 
		( t.loan_duration eq . ) );
QUIT;

TITLE1 'STEP 5(After Imputation): Count the total number of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan duration';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT COUNT(*) Label = 'Number of Loan Applicants'
FROM DAP_ASS.TESTING_DS t
WHERE ( ( t.loan_duration IS MISSING ) OR 
		( t.loan_duration eq . ) );
QUIT;


/* STEP 1: FIND MISSING VALUE FOR CONTINUOUS VARIABLE - LOAN_AMOUNT */
TITLE1 'STEP 1: List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan amount';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TESTING_DS t
WHERE ( ( t.loan_amount IS MISSING ) OR 
		( t.loan_amount eq . ) );

QUIT;

/* STEP 2: COUNT THE TOTAL NUMBER OF LOAN_AMOUNT */
TITLE1 'STEP 2: Count the total number of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan amount';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT COUNT(*) Label = 'Number of Loan Applicants'
FROM DAP_ASS.TESTING_DS t
WHERE ( ( t.loan_amount IS MISSING ) OR 
		( t.loan_amount eq . ) );

QUIT;

/* STEP 2.1 MAKE A BACK UP */
PROC SQL;

CREATE TABLE DAP_ASS.TESTING_BK_DS AS
SELECT * 
FROM DAP_ASS.TESTING_DS;

QUIT;

/* STEP 3: IMPUTE THE MISSING VALUES FOUND IN THE CONTINUOURS VARIABLE - LOAN_AMOUNT */;
PROC STDIZE DATA = DAP_ASS.TESTING_DS REPONLY

METHOD = MEAN OUT = DAP_ASS.TESTING_DS;
VAR loan_amount;

QUIT;

/* STEP 4 & 5 */
TITLE1 'STEP 4(After Imputation): List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan amount';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TESTING_DS t
WHERE ( ( t.loan_amount IS MISSING ) OR 
		( t.loan_amount eq . ) );
QUIT;

TITLE1 'STEP 5(After Imputation): Count the total number of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan amount';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT COUNT(*) Label = 'Number of Loan Applicants'
FROM DAP_ASS.TESTING_DS t
WHERE ( ( t.loan_amount IS MISSING ) OR 
		( t.loan_amount eq . ) );
QUIT;


/* STEP 1: FIND MISSING VALUE FOR CONTINUOUS VARIABLE - LOAN_HISTORY */
TITLE1 'STEP 1: List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan history';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TESTING_DS t
WHERE ( ( t.loan_history IS MISSING ) OR 
		( t.loan_history eq . ) );

QUIT;

/* STEP 2: COUNT THE TOTAL NUMBER OF LOAN_HISTORY */
TITLE1 'STEP 2: Count the total number of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan history';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT COUNT(*) Label = 'Number of Loan Applicants'
FROM DAP_ASS.TESTING_DS t
WHERE ( ( t.loan_history IS MISSING ) OR 
		( t.loan_history eq . ) );
QUIT;

/* STEP 2.1 MAKE A BACK UP */
PROC SQL;

CREATE TABLE DAP_ASS.TESTING_BK_DS AS
SELECT * 
FROM DAP_ASS.TESTING_DS;

QUIT;

/* STEP 3: IMPUTE THE MISSING VALUES FOUND IN THE CONTINUOURS VARIABLE - LOAN_HISTORY */;
PROC STDIZE DATA = DAP_ASS.TESTING_DS REPONLY

METHOD = MEAN OUT = DAP_ASS.TESTING_DS;
VAR loan_history;

QUIT;

/* STEP 4 & 5 */
TITLE1 'STEP 4(After Imputation): List the details of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan history';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT *
FROM DAP_ASS.TESTING_DS t
WHERE ( ( t.loan_history IS MISSING ) OR 
		( t.loan_history eq . ) );
QUIT;

TITLE1 'STEP 5(After Imputation): Count the total number of the loan applicants who submitted';
TITLE2 'their loan application without stating their loan history';
FOOTNOTE '------ End --------';

PROC SQL;
SELECT COUNT(*) Label = 'Number of Loan Applicants'
FROM DAP_ASS.TESTING_DS t
WHERE ( ( t.loan_history IS MISSING ) OR 
		( t.loan_history eq . ) );
QUIT;


/* TO CHECK THE MISSING VALUE OF CATEGORICAL VARIABLE - TRAINING_DS */
TITLE 'Find the Categorical variables of DAP_ASS.TRAINING_DS still with missing values';
PROC FORMAT;
VALUE $missfmt ' ' = 'Total number of observations with missing values' others = 'Total number of observations without missing values';
Run; 

PROC FREQ DATA = DAP_ASS.TRAINING_DS;
FORMAT _CHAR_ $missfmt.;
TABLE _CHAR_  / missing nocum nopercent;
RUN;

/* TO CHECK THE MISSING VALUE OF CATEGORICAL VARIABLE TESTING_DS */
TITLE 'Find the Categorical variables of DAP_ASS.TESTING_DS still with missing values';
PROC FORMAT;
VALUE $missfmt ' ' = 'Total number of observations with missing values' others = 'Total number of observations without missing values';
Run; 

PROC FREQ DATA = DAP_ASS.TESTING_DS;
FORMAT _CHAR_ $missfmt.;
TABLE _CHAR_  / missing nocum nopercent;
RUN;

/* TO CHECK THE MISSING VALUES OF NUMERIC - TRAINING_DS*/
TITLE 'Find the Numeric variables of DAP_ASS.TRAINING_DS still with missing values';
PROC FORMAT;
VALUE missfmt. = 'Total number of observations with missing values' others = 'Total number of observations without missing values';
RUN; 

PROC FREQ DATA = DAP_ASS.TRAINING_DS;
FORMAT _NUMERIC_ missfmt.;
TABLE _NUMERIC_  / missing nocum nopercent;
RUN;

/* TO CHECK THE MISSING VALUES OF NUMERIC - TESTING_DS*/
TITLE 'Find the Numeric variables of DAP_ASS.TESTING_DS still with missing values';
PROC FORMAT;
VALUE missfmt. = 'Total number of observations with missing values' others = 'Total number of observations without missing values';
RUN; 

PROC FREQ DATA = DAP_ASS.TESTING_DS;
FORMAT _NUMERIC_ missfmt.;
TABLE _NUMERIC_  / missing nocum nopercent;
RUN;


/************************************************************* CHAPTER 8 - Creation of a model  *************************************************************/
/* Creation of a model using Logistic regression algorithm */
PROC LOGISTIC DATA = DAP_ASS.TRAINING_DS OUTMODEL = DAP_ASS.TRAINING_DS_LR_MODEL; 
CLASS
	EMPLOYMENT
	GENDER 
	QUALIFICATION
	MARITAL_STATUS
	LOAN_LOCATION
	FAMILY_MEMBERS
	LOAN_HISTORY
	;
MODEL LOAN_APPROVAL_STATUS = 
	GENDER
	FAMILY_MEMBERS
	MARITAL_STATUS
	EMPLOYMENT	
	QUALIFICATION
	LOAN_AMOUNT
	CANDIDATE_INCOME
	GUARANTEE_INCOME
	LOAN_HISTORY
	LOAN_DURATION
	LOAN_LOCATION
	;
OUTPUT OUT = DAP_ASS.TRAINING_OUT_DS P = PPRED_PROB;

RUN;
/*PRED_PROB ->Predicted probability - variable to hold predicted probability 
OUT -> the output will be stored in the dataset 
Akaike Information criterion must ( AIC ) < SC (Schwarz Criterion) */
/*If Pr > ChiSq is <= 0.05, it means that that independent variable is an 
important variable and as it is truely contributing to predite the dependent varibale*/

/* Predict the loan approval status using the model created */
PROC LOGISTIC INMODEL = DAP_ASS.TRAINING_DS_LR_MODEL; /* It is the model you created */

SCORE DATA = DAP_ASS.TESTING_DS /* Test ds */
OUT = DAP_ASS.TESTING_LAS_PREDICTED_DS; /*Location of output */

QUIT;

/* Extract Metadata/Data Dictionary */ 
PROC CONTENTS DATA=DAP_ASS.TESTING_LAS_PREDICTED_DS;
RUN;

/************************************************************* CHAPTER 9 - Data visualization and Report Generation  *************************************************************/
/* Generating a simple report using SAS ODS - PDF report */

ODS PDF FILE = "/home/u63933328/DAP_FT_OCTOBER_2024_TP0821063/LAS_REPORT.pdf"; 
PROC PRINT DATA = DAP_ASS.TESTING_LAS_PREDICTED_DS;
RUN;
ODS PDF CLOSE; 

/* Determine the report using SAS ODS - Output Delivery/Display System*/
/* Display the details of the loan approval status predicted */

ODS PDF CLOSE;
ODS PDF FILE = "/home/u63933329/DAP_FT_OCTOBER_2024_TP082561/LAS_REPORT2.pdf";
OPTIONS NODATE;
TITLE1 'Bank Loan Approval Status Predicted';
TITLE2 'APU,TPM';
PROC REPORT DATA = DAP_ASS.TESTING_LAS_PREDICTED_DS NOWINDOWS;
BY SME_LOAN_ID_NO;
DEFINE SME_LOAN_ID_NO / GROUP 'LOAN ID';
DEFINE MARITAL_STATUS / GROUP 'MARITAL STATUS';
DEFINE GENDER / GROUP 'GENDER';
DEFINE FAMILY_MEMBERS / GROUP 'FAMILY MEMBERS';
DEFINE GUARANTEE_INCOME / GROUP 'CO-APPLICANT INCOME';
DEFINE CANDIDATE_INCOME / GROUP 'MONTHLY INCOME';
DEFINE LOAN_DURATION / GROUP 'LOAN DURATION';
DEFINE LOAN_LOCATION / GROUP 'LOAN LOCATION';
DEFINE LOAN_AMOUNT / GROUP 'LOAN AMOUNT';
DEFINE LOAN_HISTORY / GROUP 'LOAN HISTORY';

FOOTNOTE '---End of Report---';
RUN;
ODS PDF CLOSE; 

/* Report Generation Begins Here 
Generating a Complex Report Using LET (user defined variable initialization)
SAS Macro, IF ELSE IF THEN Conditions ******/
OPTIONS MCOMPILENOTE = ALL; 
%MACRO MACRO_RP1(ploan_location);

%IF &ploan_location = "CITY" %THEN
%DO;
	%IF %SYSFUNC(EXIST(DAP_ASS.TESTING_LAS_CITY_DS)) %THEN
	%DO;
		PROC SQL;
			DROP TABLE DAP_ASS.TESTING_LAS_CITY_DS;
		RUN;
	%END;
	PROC SQL;
		CREATE TABLE DAP_ASS.TESTING_LAS_CITY_DS AS
		SELECT l.sme_loan_id_no as Loan_Id,
		CASE WHEN UPCASE(l.gender) = 'MALE' THEN 'M'
			 WHEN UPCASE(l.gender) = 'FEMALE' THEN 'F'
			 ELSE 'N/A'
		END AS Gender_short_name,  /* User defined variable */
		CASE WHEN UPCASE(l.gender) = 'MALE' AND l.loan_history = 1 THEN
		  'He is a reliable applicant with a history of timely loan repayments.'
			 WHEN UPCASE(l.gender) = 'MALE' AND l.loan_history = 0 THEN
		  'He is not a reliable applicant and has a history of delayed loan repayments.'
		  	 WHEN UPCASE(l.gender) = 'FEMALE' AND l.loan_history = 1 THEN
		  'She is a reliable applicant with a history of timely loan repayments.'	 
		  	 WHEN UPCASE(l.gender) = 'FEMALE' AND l.loan_history = 0 THEN
		  'She is not a reliable applicant and has a history of delayed loan repayments.'
		  	 ELSE 'N/A'
		END AS Remarks   /* User defined variable */ 
		FROM DAP_ASS.TESTING_LAS_PREDICTED_DS l
		WHERE UPCASE(l.loan_location) = &ploan_location;
	RUN;
	
	TITLE1 'Complex report' &SYSDATE;
	TITLE2 'Details of the Loan Applicants connected to ' &ploan_location;
	PROC PRINT DATA = DAP_ASS.TESTING_LAS_CITY_DS;
		VAR Loan_Id Gender_short_name Remarks;
	RUN;
	
%END;


%ELSE %IF &ploan_location = "VILLAGE" %THEN
%DO;
	%IF %SYSFUNC(EXIST(DAP_ASS.TESTING_LAS_VILLAGE_DS)) %THEN
	%DO;
		PROC SQL;
			DROP TABLE DAP_ASS.TESTING_LAS_VILLAGE_DS;
		RUN;
	%END;
	PROC SQL;
		CREATE TABLE DAP_ASS.TESTING_LAS_VILLAGE_DS AS
		SELECT l.sme_loan_id_no as Loan_Id,
		CASE WHEN UPCASE(l.gender) = 'MALE' THEN 'M'
			 WHEN UPCASE(l.gender) = 'FEMALE' THEN 'F'
			 ELSE 'N/A'
		END AS Gender_short_name,  /* User defined variable */
		CASE WHEN UPCASE(l.gender) = 'MALE' AND l.loan_history = 1 THEN
		  'He is a reliable applicant with a history of timely loan repayments.'
			 WHEN UPCASE(l.gender) = 'MALE' AND l.loan_history = 0 THEN
		  'He is not a reliable applicant and has a history of delayed loan repayments.'
		  	 WHEN UPCASE(l.gender) = 'FEMALE' AND l.loan_history = 1 THEN
		  'She is a reliable applicant with a history of timely loan repayments.'	 
		  	 WHEN UPCASE(l.gender) = 'FEMALE' AND l.loan_history = 0 THEN
		  'She is not a reliable applicant and has a history of delayed loan repayments.'
		  	 ELSE 'N/A'
		END AS Remarks   /* User defined variable */ 
		FROM DAP_ASS.TESTING_LAS_PREDICTED_DS l
		WHERE UPCASE(l.loan_location) = &ploan_location;
	RUN;
	
	TITLE1 'Complex report' &SYSDATE;
	TITLE2 'Details of the Loan Applicants connected to ' &ploan_location;
	PROC PRINT DATA = DAP_ASS.TESTING_LAS_VILLAGE_DS;
		VAR Loan_Id Gender_short_name Remarks;
	RUN;
	
%END;


%ELSE %IF &ploan_location = "TOWN" %THEN
%DO;
	%IF %SYSFUNC(EXIST(DAP_ASS.TESTING_LAS_TOWN_DS)) %THEN
	%DO;
		PROC SQL;
			DROP TABLE DAP_ASS.TESTING_LAS_TOWN_DS;
		RUN;
	%END;
	PROC SQL;
		CREATE TABLE DAP_ASS.TESTING_LAS_TOWN_DS AS
		SELECT l.sme_loan_id_no as Loan_Id,
		CASE WHEN UPCASE(l.gender) = 'MALE' THEN 'M'
			 WHEN UPCASE(l.gender) = 'FEMALE' THEN 'F'
			 ELSE 'N/A'
		END AS Gender_short_name,  /* User defined variable */
		CASE WHEN UPCASE(l.gender) = 'MALE' AND l.loan_history = 1 THEN
		  'He is a reliable applicant with a history of timely loan repayments.'
			 WHEN UPCASE(l.gender) = 'MALE' AND l.loan_history = 0 THEN
		  'He is not a reliable applicant and has a history of delayed loan repayments.'
		  	 WHEN UPCASE(l.gender) = 'FEMALE' AND l.loan_history = 1 THEN
		  'She is a reliable applicant with a history of timely loan repayments.'	 
		  	 WHEN UPCASE(l.gender) = 'FEMALE' AND l.loan_history = 0 THEN
		  'She is not a reliable applicant and has a history of delayed loan repayments.'
		  	 ELSE 'N/A'
		END AS Remarks   /* User defined variable */ 
		FROM DAP_ASS.TESTING_LAS_PREDICTED_DS l
		WHERE UPCASE(l.loan_location) = &ploan_location;
	RUN;
	
	TITLE1 'Complex report' &SYSDATE;
	TITLE2 'Details of the Loan Applicants connected to ' &ploan_location;
	PROC PRINT DATA = DAP_ASS.TESTING_LAS_TOWN_DS;
		VAR Loan_Id Gender_short_name Remarks;
	RUN;
	
%END;

%MEND MACRO_RP1;

/* Call the MACRO MACRO_RP1 */
%MACRO_RP1("CITY");
%MACRO_RP1("VILLAGE");
%MACRO_RP1("TOWN");


/********************************************
Bar Chart: The groups were stacked one above the other
********************************************/
TITLE 'Number of family members by loan location';
PROC SGPLOT DATA = DAP_ASS.TESTING_LAS_PREDICTED_DS;
	vbar family_members /group = loan_location groupdisplay = cluster;
	label family_members = 'Number of family members';
RUN; 

/* 1: SAS Simple Bar Chart  */
PROC SGPLOT DATA = DAP_ASS.TESTING_LAS_PREDICTED_DS;
VBAR loan_location;
TITLE 'Loan Applicants by Loan Location';
RUN;

/* 2: Histogram, a normal density curve, and a kernel density curve */
TITLE 'Histogram, a normal density curve, and a kernel density curve';
PROC SGPLOT DATA = DAP_ASS.TESTING_LAS_PREDICTED_DS;
    HISTOGRAM loan_amount;
    DENSITY loan_amount;
    DENSITY loan_amount / TYPE=kernel;
RUN;

/* 3: Ellipse Plot */
PROC SGPLOT DATA = DAP_ASS.TESTING_LAS_PREDICTED_DS;
    SCATTER X=candidate_income Y=loan_amount;
    ELLIPSE X=candidate_income Y=loan_amount;
RUN;

/**************************************************************************************
Pie Chart: A pie-chart is a representation of values as slices of a circle with different colors 
***************************************************************************************/
TITLE 'Loan approval status by loan location';
PROC GCHART DATA = DAP_ASS.TESTING_LAS_PREDICTED_DS;
	pie3d I_LOAN_APPROVAL_STATUS;
RUN;
QUIT;

GOPTIONS RESET=ALL BORDER;
TITLE 'family_members vs loan location';
PROC GCHART DATA=DAP_ASS.TESTING_LAS_PREDICTED_DS;
    PIE family_members / DETAIL=loan_location
        DETAIL_PERCENT=best
        DETAIL_SLICE=best
        DETAIL_THRESHOLD=1
        NOLEGEND; 
RUN;
QUIT;
