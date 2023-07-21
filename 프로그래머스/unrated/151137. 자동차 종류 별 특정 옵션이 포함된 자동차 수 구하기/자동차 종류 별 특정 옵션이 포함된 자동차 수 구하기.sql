-- 코드를 입력하세요
SELECT CAR_TYPE, count(car_id) as CARS
from CAR_RENTAL_COMPANY_CAR
where OPTIONS like "%시트%"
group by CAR_TYPE
ORDER BY car_type ASC