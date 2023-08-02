-- 코드를 입력하세요
SELECT 
    TO_CHAR(SALES_DATE, 'YYYY') AS YEAR,
    to_number(TO_CHAR(SALES_DATE, 'MM')) AS MONTH,
    u.gender AS GENDER,
    COUNT(DISTINCT u.user_id) as USERS
FROM ONLINE_SALE o , USER_INFO u
WHERE o.user_id = u.user_id AND u.gender IS NOT NULL
GROUP BY TO_CHAR(SALES_DATE, 'YYYY'), TO_CHAR(SALES_DATE, 'MM'), u.gender
ORDER BY year, month, gender