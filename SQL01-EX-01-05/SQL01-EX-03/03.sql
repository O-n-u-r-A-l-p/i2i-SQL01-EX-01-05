SELECT
    SUBSTR(PHONE_NUMBER, 1, 3) AS Operator,
    COUNT(*) AS Total_Subscribers
FROM
    HR.EMPLOYEES
GROUP BY
    SUBSTR(PHONE_NUMBER, 1, 3)
ORDER BY
    CASE SUBSTR(PHONE_NUMBER, 1, 3)
        WHEN '515' THEN 1
        WHEN '590' THEN 2
        WHEN '603' THEN 3
        WHEN '011' THEN 4
        WHEN '650' THEN 5
    END;

SELECT * FROM(SELECT substr(phone_number,1,3) Operator  from HR.employees )
PIVOT 
(
  COUNT(*) FOR Operator IN('515' AS "515",'590' AS "590",'603' AS "603",'011' AS "011",'650' AS "650")
);