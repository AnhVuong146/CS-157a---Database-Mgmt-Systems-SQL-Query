SELECT YELP_ID, First_Name, Last_Name
FROM YELP_USER
WHERE GENDER = 'M' 
AND Complimented_Friendlist = 'Y3' 
OR Complimented_Friendlist = 'Y8' 
OR Complimented_Friendlist = 'Y11' 
OR Complimented_Friendlist = 'Y12';