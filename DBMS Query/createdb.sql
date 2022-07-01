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

INSERT INTO YELP_USER VALUES('Y1','john@yahoo.com','John','Smith','1992-12-12','FL','M','Y2,Y7,Y9','Y7, Y9','B03, B02, B13, B35, B36, B05, B04, B09');
INSERT INTO YELP_USER VALUES('Y2','juan@gmail.com','Juan','Carlos','1988-02-07 00:00:00','AK','M',NULL,NULL,'B10, B05, B11, B02, B36, B35');
INSERT INTO YELP_USER VALUES('Y3','Jane@gmail.com','Jane','Chapel','1980-06-01 00:00:00','IL','F','Y6,Y11,Y5','Y6',NULL);
INSERT INTO YELP_USER VALUES('Y4','adi@yahoo.com','Aditya','Awasthi','1994-04-12 00:00:00','CA','M','Y7, Y11','Y11','B04, B11, B12, B05, B36, B35, B02');
INSERT INTO YELP_USER VALUES('Y5','james@hotmail.com','James ','Williams','1991-05-05 00:00:00','NY','M',NULL,NULL,'B06, B11, B12, B05, B36, B35, B08');
INSERT INTO YELP_USER VALUES('Y6','mike@yahoo.com','Mike','Brown','1988-03-01 00:00:00','NC','M','Y2, Y4','Y4','B36, B11, B02, B03, B13');
INSERT INTO YELP_USER VALUES('Y7','bob@yahoo.com','Bob','Jones','1970-02-19 00:00:00','NY','M','Y1, Y3','Y3','B13, B35, B36, B11, B02, B03');
INSERT INTO YELP_USER VALUES('Y8','wei@gmail.com',' Wei','Zhang','1975-03-18 00:00:00','NV','F','Y6, Y1','Y6','B11, B02, B13, B35, B36, B4');
INSERT INTO YELP_USER VALUES('Y9','mark@gmail.com','Mark','Davis','1993-11-02 00:00:00','CA','M','Y1,Y2','Y2','B05, B11, B02, B13 , B35, B36');
INSERT INTO YELP_USER VALUES('Y10','daniel@yahoo.com','Daniel','Garcia','1984-05-10 00:00:00','NJ','M',NULL,NULL,'B01, B05, B11, B02, B36, B35, B03');
INSERT INTO YELP_USER VALUES('Y11','maria@hotmail.com','Maria','Rodriguez','1985-08-12 00:00:00','CA','F','Y3, Y5','Y5','B03, B04 , B01, B05, B11, B02, B36, B35');
INSERT INTO YELP_USER VALUES('Y12','freya@yahoo.com','Freya','Wilson','1995-10-05 00:00:00','NJ','F','Y11','Y11','B07, B10, B05, B11, B02, B13 , B35, B36');

CREATE TABLE REVIEWS (
REVIEW_ID VARCHAR(3) PRIMARY KEY,
Stars INT,
Author VARCHAR(3) NOT NULL,
Publish_Date VARCHAR(50) NOT NULL,
BUSSINESS_ID VARCHAR(3) NOT NULL,
List_Of_Comments VARCHAR(7));

INSERT INTO REVIEWS VALUES('R1',3,'Y11','Oct-02-07 09:10:54 PDT','B3',NULL);
INSERT INTO REVIEWS VALUES('R2',2,'Y10','Sep-29-07 13:45:00 PDT','B1','Y3, Y2');
INSERT INTO REVIEWS VALUES('R3',4,'Y2','Sep-29-07 10:38:25 PDT','B10','Y3');
INSERT INTO REVIEWS VALUES('R4',5,'Y11','Oct-02-07 13:05:56 PDT','B4',NULL);
INSERT INTO REVIEWS VALUES('R5',5,'Y1','Oct-25-07 17:15:00 PDT','B3',NULL);
INSERT INTO REVIEWS VALUES('R6',5,'Y4','Sep-26-07 17:15:00 PDT','B4',NULL);
INSERT INTO REVIEWS VALUES('R7',5,'Y9','Sep-26-07 17:15:00 PDT','B5','Y8, Y11');
INSERT INTO REVIEWS VALUES('R8',5,'Y5','Sep-27-07 17:15:00 PDT','B6',NULL);
INSERT INTO REVIEWS VALUES('R9',5,'Y12','Sep-28-07 17:15:00 PDT','B7',NULL);
INSERT INTO REVIEWS VALUES('R10',5,'Y5','Oct-29-07 17:15:00 PDT','B8',NULL);
INSERT INTO REVIEWS VALUES('R11',5,'Y1','Sep-30-07 17:15:00 PDT','B9',NULL);
INSERT INTO REVIEWS VALUES('R12',5,'Y12','Oct-25-07 17:15:00 PDT','B10',NULL);
INSERT INTO REVIEWS VALUES('R13',5,'Y4','Sep-25-07 17:15:00 PDT','B11',NULL);
INSERT INTO REVIEWS VALUES('R14',5,'Y5','Sep-25-07 17:15:00 PDT','B12',NULL);
INSERT INTO REVIEWS VALUES('R15',5,'Y1','Sep-29-07 17:15:00 PDT','B13','Y8');
INSERT INTO REVIEWS VALUES('R16',2,'Y11','Jun-07-15 17:15:00 PDT','B2','Y8');
INSERT INTO REVIEWS VALUES('R17',1,'Y4','May-05-15 17:15:00 PDT','B2',NULL);
INSERT INTO REVIEWS VALUES('R18',1,'Y1','May-05-15 17:15:00 PDT','B2',NULL);
INSERT INTO REVIEWS VALUES('R19',1,'Y10','Oct-25-07 17:15:00 PDT','B3',NULL);
INSERT INTO REVIEWS VALUES('R20',1,'Y1','Sep-28-07 17:15:00 PDT','B4','Y7, Y10');
INSERT INTO REVIEWS VALUES('R21',4,'Y11','Jun-07-15 17:15:00 PDT','B14',NULL);
INSERT INTO REVIEWS VALUES('R22',1,'Y4','May-05-15 17:15:00 PDT','B14',NULL);
INSERT INTO REVIEWS VALUES('R23',1,'Y1','May-05-15 17:15:00 PDT','B14',NULL);

CREATE TABLE BUSINESS (
Business_Id VARCHAR(4) PRIMARY KEY,
Business_Name VARCHAR(50) NOT NULL,
Days_Of_Operation VARCHAR(50) NOT NULL,
Ambient_type VARCHAR(20),
Address VARCHAR(100) NOT NULL,
Business_Category VARCHAR(5) NOT NULL);

INSERT INTO BUSINESS VALUES('B1','Big Surf','Mon, Tue, Wed','Touristy','1500 N McClintock Dr, Tempe, AZ 85281','BCT1');
INSERT INTO BUSINESS VALUES('B2','SMITH THOMSON ','Mon, Tue, Wed, Thu','Touristy','1595 Spring Hill Road Suite 110 Vienna VA 22182','BCT6');
INSERT INTO BUSINESS VALUES('B3','Bay Area Coffee Shop','Mon, Tue, Wed','Touristy','1522 W. Sam Rayburn Dr. Bonham, CA 95051','BCT8');
INSERT INTO BUSINESS VALUES('B4','China  Coffee Toffee ','Mon, Tue, Wed','Touristy','2570 El Camino Real, Santa Clara, CA 95051','BCT4');
INSERT INTO BUSINESS VALUES('B5','Hastings Water Works','Mon, Tue, Wed',NULL,'10331 Brecksville Rd. Brecksville, OH 44141','BCT7');
INSERT INTO BUSINESS VALUES('B6','Catch Your Big Break','Mon, Tue, Wed, Thu, Fri, Sat, Sun',NULL,'2341 Roosevelt Ct Santa Clara, CA 95051','BCT3');
INSERT INTO BUSINESS VALUES('B7','The Cinebar','Mon, Tue, Wed, Thu',NULL,'20285 South Western Ave., Suite # 200, Torrance, CA 90501','BCT5');
INSERT INTO BUSINESS VALUES('B8','Coffee Bar &' || ' Bistro','Mon, Tue, Wed',NULL,'2585 El Camino Real Santa Clara, CA','BCT5');
INSERT INTO BUSINESS VALUES('B9','Hobee''s','Mon, Tue, Wed, Thu, Fri',NULL,'90 Skyport Dr San Jose, CA 95110','BCT6');
INSERT INTO BUSINESS VALUES('B10','Cafe Gourmet','Mon, Tue',NULL,'80 N Market St San Jose, CA 95113','BCT6');
INSERT INTO BUSINESS VALUES('B11','Yellow Stone National Park','Mon, Fri, Sat, Sun',NULL,'Yellow Stone National Park, WY 82190','BCT2');
INSERT INTO BUSINESS VALUES('B12','Petrified Forest National Park','Mon, Tue, Sun',NULL,'P.O. Box 221 AZ 86028','BCT2');
INSERT INTO BUSINESS VALUES('B13','Grand Canyon National park','Mon, Sat, Sun',NULL,'Highway 64, AZ 86023','BCT2');
INSERT INTO BUSINESS VALUES('B35','Connecticut Bar','Mon, Thu, Sun',NULL,'5847 San Felipe, Suite 2400 Houston, TX 77057','BCT5');
INSERT INTO BUSINESS VALUES('B36','Sherley''s Bar &' || ' Restaurent','Mon, Wed, Sun',NULL,'1132 Terry Road, Hartford, CT 06105','BCT5');
INSERT INTO BUSINESS VALUES('B14','Connecticut Bar &' || ' Restaurent','Mon, Wed, Sun',NULL,'1133 Terry Road, Hartford, CT 06105','BCT5');

CREATE TABLE BUSINESS_CATEGORY (
Busn_Catg_Id VARCHAR(4) PRIMARY KEY,
Busn_Catg_Name VARCHAR(40) NOT NULL,
List_Of_Subcategories VARCHAR(40) NOT NULL);

INSERT INTO BUSINESS_CATEGORY VALUES('BCT1','Amusement Parks','Water Parks');
INSERT INTO BUSINESS_CATEGORY VALUES('BCT2','National Parks','Wildlife National Parks');
INSERT INTO BUSINESS_CATEGORY VALUES('BCT3','Career Counseling','Career Counselling for kids');
INSERT INTO BUSINESS_CATEGORY VALUES('BCT4','Food and More','Ice-cream and Yougurt');
INSERT INTO BUSINESS_CATEGORY VALUES('BCT5','Bars','Sports bar');
INSERT INTO BUSINESS_CATEGORY VALUES('BCT6','Restaurents','Ice-cream and Yougurt');
INSERT INTO BUSINESS_CATEGORY VALUES('BCT7','Pool Cleaners','Swimming pool cleaners');
INSERT INTO BUSINESS_CATEGORY VALUES('BCT8','Coffee Shops','Cold coffee shops');

CREATE TABLE CHECKIN (
ID INT PRIMARY KEY,
INFO VARCHAR(20) NOT NULL,
BUSN_ID VARCHAR(3) NOT NULL);

INSERT INTO CHECKIN VALUES(1,'Checkin Info 1','B1');
INSERT INTO CHECKIN VALUES(2,'Checkin Info 2','B2');
INSERT INTO CHECKIN VALUES(3,'Checkin Info 3','B3');
INSERT INTO CHECKIN VALUES(4,'Checkin Info 4','B4');
INSERT INTO CHECKIN VALUES(5,'Checkin Info 5','B5');
INSERT INTO CHECKIN VALUES(6,'Checkin Info 6','B6');
INSERT INTO CHECKIN VALUES(7,'Checkin Info 7','B7');
INSERT INTO CHECKIN VALUES(8,'Checkin Info 8','B8');
INSERT INTO CHECKIN VALUES(9,'Checkin Info 9','B9');
INSERT INTO CHECKIN VALUES(10,'Checkin Info 10','B10');
INSERT INTO CHECKIN VALUES(11,'Checkin Info 11','B11');
INSERT INTO CHECKIN VALUES(12,'Checkin Info 12','B12');
INSERT INTO CHECKIN VALUES(13,'Checkin Info 13','B13');