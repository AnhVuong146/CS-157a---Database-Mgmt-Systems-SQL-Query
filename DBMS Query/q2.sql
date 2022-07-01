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

