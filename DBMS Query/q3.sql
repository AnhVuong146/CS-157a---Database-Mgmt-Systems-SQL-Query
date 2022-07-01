SELECT Business_Id, Business_Name
FROM BUSINESS
WHERE Business_Name LIKE '%Coffee%' AND Business_Category NOT IN 'BCT8'
ORDER BY Business_Id;