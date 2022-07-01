SELECT Business_Category, COUNT(*)
FROM BUSINESS_CATEGORY C, REVIEWS R, BUSINESS B
WHERE C.Busn_Catg_Id = B.BUSINESS_CATEGORY 
AND R.BUSSINESS_ID = B.BUSINESS_ID
GROUP BY Business_Category 
ORDER BY count(Business_Category) DESC;