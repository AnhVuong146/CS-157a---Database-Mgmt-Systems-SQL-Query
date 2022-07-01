SELECT Business_Id, Business_Name
FROM BUSINESS B
WHERE EXISTS (
    SELECT *
    FROM REVIEWS R
    WHERE EXISTS (
        SELECT *
        FROM YELP_USER U
        Where R.author = U.YELP_ID and B.BUSINESS_ID = R.BUSSINESS_ID and Friendlist is NOT NULL));
