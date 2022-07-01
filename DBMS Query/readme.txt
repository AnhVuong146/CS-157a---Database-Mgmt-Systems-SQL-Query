Anh Vuong
HW3

1.
CREATE TABLE BUSINESS (
Business_Id VARCHAR(4) PRIMARY KEY,
Business_Name VARCHAR(50) NOT NULL,
Days_Of_Operation VARCHAR(50) NOT NULL,
Ambient_type VARCHAR(20),
Address VARCHAR(100) NOT NULL,
Business_Category VARCHAR(5) NOT NULL);

SELECT YELP_ID, First_Name, Last_Name
FROM YELP_USER
WHERE BirthPlace LIKE '%CA%';

YEL FIRST_NA LAST_NAME
--- -------- -----------------
Y4  Aditya   Awasthi
Y9  Mark     Davis
Y11 Maria    Rodriguez


2.

CREATE TABLE YELP_USER (
YELP_ID VARCHAR(3) PRIMARY KEY,
Email VARCHAR(17) NOT NULL,
First_Name VARCHAR(8) NOT NULL,
Last_Name VARCHAR(17) NOT NULL,
DOB VARCHAR(20),
BirthPlace VARCHAR(3) NOT NULL,
Gender VARCHAR(1) NOT NULL,
Friendlist VARCHAR(9),
Complimented_Friendlist VARCHAR(6),
Checkedin_Businesses VARCHAR(50));

SELECT YELP_ID, First_Name, Last_Name, BirthPlace, Checkedin_Businesses
FROM YELP_USER
WHERE BirthPlace = 'CA' 
AND Checkedin_Businesses NOT LIKE '%B03%'
AND Checkedin_Businesses NOT LIKE '%B04%'
AND Checkedin_Businesses NOT LIKE '%B06%'
AND Checkedin_Businesses NOT LIKE '%B07%'
AND Checkedin_Businesses NOT LIKE '%B08%'
AND Checkedin_Businesses NOT LIKE '%B09%'
AND Checkedin_Businesses NOT LIKE '%B10%';

YEL FIRST_NA LAST_NAME         BIR CHECKEDIN_BUSINESSES
--- -------- ----------------- --- --------------------------------------------------
Y9  Mark     Davis             CA  B05, B11, B02, B13 , B35, B36


3.
CREATE TABLE BUSINESS (
Business_Id VARCHAR(4) PRIMARY KEY,
Business_Name VARCHAR(50) NOT NULL,
Days_Of_Operation VARCHAR(50) NOT NULL,
Ambient_type VARCHAR(20),
Address VARCHAR(100) NOT NULL,
Business_Category VARCHAR(5) NOT NULL);


SELECT Business_Id, Business_Name
FROM BUSINESS
WHERE Business_Name LIKE '%Coffee%' AND Business_Category NOT IN 'BCT8'
ORDER BY Business_Id;

BUSI BUSINESS_NAME
---- --------------------------------------------------
B4   China  Coffee Toffee
B8   Coffee Bar 1



4.

CREATE TABLE YELP_USER (
YELP_ID VARCHAR(3) PRIMARY KEY,
Email VARCHAR(17) NOT NULL,
First_Name VARCHAR(8) NOT NULL,
Last_Name VARCHAR(17) NOT NULL,
DOB VARCHAR(20),
BirthPlace VARCHAR(3) NOT NULL,
Gender VARCHAR(1) NOT NULL,
Friendlist VARCHAR(9),
Complimented_Friendlist VARCHAR(6),
Checkedin_Businesses VARCHAR(50));

SELECT YELP_ID, First_Name, Last_Name
FROM YELP_USER
WHERE GENDER = 'M' 
AND Complimented_Friendlist = 'Y3' 
OR Complimented_Friendlist = 'Y8' 
OR Complimented_Friendlist = 'Y11' 
OR Complimented_Friendlist = 'Y12';

YEL FIRST_NA LAST_NAME
--- -------- -----------------
Y4  Aditya   Awasthi
Y7  Bob      Jones
Y12 Freya    Wilson



5.

CREATE TABLE BUSINESS (
Business_Id VARCHAR(4) PRIMARY KEY,
Business_Name VARCHAR(50) NOT NULL,
Days_Of_Operation VARCHAR(50) NOT NULL,
Ambient_type VARCHAR(20),
Address VARCHAR(100) NOT NULL,
Business_Category VARCHAR(5) NOT NULL);

SELECT Business_Id, Business_Name
FROM BUSINESS B
WHERE EXISTS (
    SELECT *
    FROM REVIEWS R
    WHERE EXISTS (
        SELECT *
        FROM YELP_USER U
        Where R.author = U.YELP_ID and B.BUSINESS_ID = R.BUSSINESS_ID and Friendlist is NOT NULL));


BUSI BUSINESS_NAME
---- --------------------------------------------------
B2   SMITH THOMSON
B3   Bay Area Coffee Shop
B4   China  Coffee Toffee
B5   Hastings Water Works
B7   The Cinebar
B10  Cafe Gourmet
B11  Yellow Stone National Park
B13  Grand Canyon National park


6.

CREATE TABLE BUSINESS (
Business_Id VARCHAR(4) PRIMARY KEY,
Business_Name VARCHAR(50) NOT NULL,
Days_Of_Operation VARCHAR(50) NOT NULL,
Ambient_type VARCHAR(20),
Address VARCHAR(100) NOT NULL,
Business_Category VARCHAR(5) NOT NULL);

CREATE TABLE BUSINESS_CATEGORY (
Busn_Catg_Id VARCHAR(4) PRIMARY KEY,
Busn_Catg_Name VARCHAR(40) NOT NULL,
List_Of_Subcategories VARCHAR(40) NOT NULL);

CREATE TABLE REVIEWS (
REVIEW_ID VARCHAR(3) PRIMARY KEY,
Stars INT,
Author VARCHAR(3) NOT NULL,
Publish_Date VARCHAR(50) NOT NULL,
BUSSINESS_ID VARCHAR(3) NOT NULL,
List_Of_Comments VARCHAR(7));

SELECT Business_Category, COUNT(*)
FROM BUSINESS_CATEGORY C, REVIEWS R, BUSINESS B
WHERE C.Busn_Catg_Id = B.BUSINESS_CATEGORY 
AND R.BUSSINESS_ID = B.BUSINESS_ID
GROUP BY Business_Category 
ORDER BY Business_Category DESC;

BUSIN   COUNT(*)
----- ----------
BCT8           3
BCT7           1
BCT6           6
BCT5           5
BCT4           3
BCT3           1
BCT2           3
BCT1           1