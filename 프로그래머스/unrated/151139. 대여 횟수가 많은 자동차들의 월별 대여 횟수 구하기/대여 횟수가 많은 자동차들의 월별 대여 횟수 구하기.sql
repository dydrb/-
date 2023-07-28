-- 코드를 입력하세요
SELECT MONTH(START_DATE) as MONTH, CAR_ID, count(car_id) as RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
where MONTH(START_DATE) BETWEEN 8 AND 10 
and car_id in (SELECT CAR_ID 
               FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
               WHERE MONTH(START_DATE) BETWEEN 8 AND 10 
               GROUP BY CAR_ID
               HAVING COUNT(*) >= 5)
group by MONTH(START_DATE), car_id
order by MONTH(START_DATE) asc, CAR_ID desc

# SELECT CAR_ID ,count(car_id)
#                FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
#                WHERE MONTH(START_DATE) BETWEEN 8 AND 10 
#                GROUP BY CAR_ID
#                HAVING COUNT(*) >= 5
#                order by car_id