# Loan Approval Status Prediction Using SAS

## Project Overview

This project predicts loan approval status using SAS. The goal is to analyse loan applicant information and predict whether a loan application is likely to be **approved** or **not approved** based on applicant details, income, loan amount, loan duration, credit history, and loan location.

The project uses training and testing datasets and applies data analysis, data cleaning, missing value imputation, logistic regression modelling, prediction, report generation, and data visualisation using SAS.

---

## Code Explanation

The SAS program starts by loading the loan application datasets and checking their structure. The code uses SAS procedures to inspect the dataset, understand the available variables, and review the data before analysis.

After loading the data, the code performs descriptive analysis on categorical variables such as gender, marital status, family members, qualification, employment status, loan location, and loan approval status. It also analyses numerical variables such as candidate income, guarantee income, loan amount, loan duration, and loan history using summary statistics and visualisations.

The code then creates SAS macros to make the analysis easier and more organised. These macros are used to run repeated analysis on categorical and continuous variables without rewriting the same code many times. This makes the program cleaner and more efficient.

Next, the code performs data cleaning and missing value treatment. Missing values in categorical variables are handled using the most frequent value, while missing values in numerical variables are handled using mean imputation. The dataset is checked before and after imputation to make sure the missing values are treated properly.

After cleaning the data, the code builds a **Logistic Regression** model. The target variable is `LOAN_APPROVAL_STATUS`, and the model uses applicant information such as gender, marital status, family members, qualification, employment, income, loan amount, loan duration, loan history, and loan location to predict the approval status.

The trained logistic regression model is then applied to the testing dataset to predict loan approval status for new applicants. The predicted results are saved into an output dataset for further analysis and reporting.

The final part of the code creates reports and visualisations. SAS procedures are used to generate tables, PDF reports, bar charts, histograms, scatter plots, ellipse plots, and pie charts. These outputs help explain the loan applicant patterns and the prediction results clearly.

---

## Model Used

- Logistic Regression

---

## SAS Procedures Used

- PROC CONTENTS
- PROC SQL
- PROC FREQ
- PROC MEANS
- PROC SGPLOT
- PROC STDIZE
- PROC LOGISTIC
- PROC REPORT
- PROC PRINT
- PROC GCHART
- SAS Macros
- SAS ODS PDF

---

## Dataset

The project uses two datasets:

- `TRAINING_DS.csv`
- `TESTING_DS.csv`

The main target variable is:

`LOAN_APPROVAL_STATUS`

The main features used in the model include:

- Gender
- Marital Status
- Family Members
- Qualification
- Employment
- Candidate Income
- Guarantee Income
- Loan Amount
- Loan Duration
- Loan History
- Loan Location

---

## Results

The logistic regression model is trained using the training dataset and then applied to the testing dataset to predict loan approval status.

The output contains the predicted loan approval status for loan applicants. The results are also presented using SAS-generated reports and visualisations to make the analysis easier to understand.

---

## Conclusion

This project shows how SAS can be used for loan approval prediction and business reporting. The code follows a full SAS analytics workflow, including data exploration, descriptive analysis, missing value treatment, macro creation, logistic regression modelling, prediction, report generation, and data visualisation.

Logistic Regression was used because loan approval prediction is a binary classification problem, where the output is either approved or not approved.

---

## Author

**Sara Mohammed Meraj Zaki**
