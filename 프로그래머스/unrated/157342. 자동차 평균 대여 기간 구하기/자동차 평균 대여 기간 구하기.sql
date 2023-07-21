-- 코드를 입력하세요
# CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 
# 평균 대여 기간이 7일 이상인 자동차들의 자동차 ID와 평균 대여 기간(컬럼명: AVERAGE_DURATION) 리스트를 출력하는 SQL문을 작성
# 평균 대여 기간은 소수점 두번째 자리에서 반올림하고, 
# 결과는 평균 대여 기간을 기준으로 내림차순 정렬해주시고, 평균 대여 기간이 같으면 자동차 ID를 기준으로 내림차순 정렬해주세요.

# SELECT history_id, car_id, (end_date - start_date+1) as AVERAGE_DURATION 
# from CAR_RENTAL_COMPANY_RENTAL_HISTORY 


SELECT car_id ,round(sum(DATEDIFF(END_DATE, START_DATE)+1)/count(car_id),1) as AVERAGE_DURATION
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by car_id
having AVERAGE_DURATION > 7
order by AVERAGE_DURATION desc, car_id desc