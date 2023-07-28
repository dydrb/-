-- 코드를 입력하세요
# CAR_RENTAL_COMPANY_CAR 테이블과 CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 
# 자동차 종류가 '세단'인 자동차들 중 
# 10월에 대여를 시작한 기록이 있는 자동차 ID 리스트를 출력하는 SQL문을 작성해주세요.
# 자동차 ID 리스트는 중복이 없어야 하며, 자동차 ID를 기준으로 내림차순 정렬해주세요.

SELECT distinct(c.car_id)
from CAR_RENTAL_COMPANY_RENTAL_HISTORY h left join CAR_RENTAL_COMPANY_CAR c on h.car_id = c.car_id
where c.car_type = "세단" and h.START_DATE like "%-10-%"
group by h.car_id
order by car_id desc

# SELECT c.CAR_ID, DATEDIFF(h.END_DATE, h.START_DATE)+1 as RENTAL_PERIOD, DAILY_FEE,
#         sum((DATEDIFF(h.END_DATE, h.START_DATE)+1)*DAILY_FEE) 
#         OVER(PARTITION BY h.CAR_ID order by HISTORY_ID) as CUMUL_SUM
# from CAR_RENTAL_COMPANY_CAR c join CAR_RENTAL_COMPANY_RENTAL_HISTORY h on c.CAR_ID = h.CAR_ID
# order by c.CAR_ID;

# RANK() 함수를 사용해서 자동차 ID 별로 대여 금액의 합계(TOTAL_FEE) 높은 순으로 순위(RAN)를 적용하는 SQL문을 작성해주세요.
# 대여 금액(FEE) = 대여기간 * 일일 대여 요금
# 최종적으로 CAR_ID, TOTAL_FEE, RAN을 조회해주세요.

# select c.car_id, sum((DATEDIFF(end_date,start_date)+1)*daily_fee) as FEE, rank() over(order by sum((DATEDIFF(end_date,start_date)+1)*daily_fee) desc) as ran
# from CAR_RENTAL_COMPANY_RENTAL_HISTORY h join CAR_RENTAL_COMPANY_CAR c on h.CAR_ID = c.CAR_ID
# group by car_id
# order by FEE desc