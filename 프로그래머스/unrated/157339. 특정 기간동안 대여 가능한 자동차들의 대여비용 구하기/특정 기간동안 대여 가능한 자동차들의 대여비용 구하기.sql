WITH TBL_1 AS (
SELECT C.CAR_ID, CAR_TYPE, DAILY_FEE
FROM CAR_RENTAL_COMPANY_CAR C JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY H
ON C.CAR_ID = H.CAR_ID
WHERE CAR_TYPE IN('세단', 'SUV') AND
C.CAR_ID NOT IN (
SELECT CAR_ID
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE MONTH(END_DATE) = 11
OR (MONTH(START_DATE) < 11 AND DATE_FORMAT(END_DATE, '%Y-%m') >= '2022-11'))),
요금할인 AS ((SELECT *,
         CASE WHEN CAR_TYPE = '세단' THEN (SELECT DISCOUNT_RATE/100
                                          FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
                                          WHERE CAR_TYPE = '세단'
                                          AND DURATION_TYPE = '30일 이상')
         WHEN CAR_TYPE = 'SUV' THEN (SELECT DISCOUNT_RATE/100
                                     FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
                                     WHERE CAR_TYPE = 'SUV'
                                     AND DURATION_TYPE = '30일 이상')
        END AS '할인율'
        FROM TBL_1)
),
        
요금할인적용 AS
(SELECT CAR_ID, CAR_TYPE, 30 * ROUND(DAILY_FEE - (DAILY_FEE * 할인율),0) AS FEE
FROM 요금할인)

SELECT DISTINCT *
FROM 요금할인적용
WHERE FEE >= 500000 AND FEE < 2000000