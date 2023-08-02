-- 코드를 입력하세요
# 조건 : 서울에 위치한 식당
# 식당 ID, 식당 이름, 음식 종류, 즐겨찾기수, 주소, 리뷰 평균 점수를 조회하는 SQL문을 작성
# REST_INFO와 REST_REVIEW 테이블
# 조건2 : 리뷰 평균점수는 소수점 세 번째 자리에서 반올림 해주시고 결과는 
# 평균점수를 기준으로 내림차순 정렬해주시고, 
# 평균점수가 같다면 즐겨찾기수를 기준으로 내림차순 정렬

# SELECT 
#     INFO.REST_ID, 
#     INFO.REST_NAME, 
#     INFO.FOOD_TYPE, 
#     INFO.FAVORITES, 
#     INFO.ADDRESS,
#     ROUND(AVG(REVIEW_SCORE),2) AS SCORE
# FROM REST_INFO INFO LEFT JOIN REST_REVIEW REVIEW ON INFO.REST_ID = REVIEW.REST_ID
# WHERE INFO.ADDRESS LIKE '서울%'
# GROUP BY REST_ID
# ORDER BY SCORE DESC, INFO.FAVORITES DESC;

SELECT 
    ri.rest_id, 
    ri.REST_NAME, 
    ri.FOOD_TYPE, 
    ri.FAVORITES, 
    ri.ADDRESS, 
    round(avg(rr.REVIEW_SCORE),2) as score
from REST_INFO ri join REST_REVIEW rr on ri.REST_ID = rr.REST_ID
where ADDRESS like '서울%'
group by ri.rest_id
order by score desc, ri.FAVORITES desc