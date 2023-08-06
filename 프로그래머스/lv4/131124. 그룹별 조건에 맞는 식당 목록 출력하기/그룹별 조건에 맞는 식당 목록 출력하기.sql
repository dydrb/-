-- 코드를 입력하세요
# MEMBER_PROFILE와 REST_REVIEW 테이블에서 
# 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회하는 SQL문을 작성해주세요.
# 회원 이름, 리뷰 텍스트, 리뷰 작성일이 출력되도록 작성해주시고, 
# 결과는 리뷰 작성일을 기준으로 오름차순, 리뷰 작성일이 같다면 리뷰 텍스트를 기준으로 오름차순 정렬해주세요.

# SELECT mp.MEMBER_ID, rr.REVIEW_TEXT, date_format(rr.REVIEW_DATE,"%Y-%m-%d") as REVIEW_DATE
# from MEMBER_PROFILE mp join REST_REVIEW rr on mp.MEMBER_ID = rr.MEMBER_ID
# order by REVIEW_DATE, REVIEW_TEXT


# group by MEMBER_ID
# having max(count(mp.MEMBER_ID)) = count(mp.MEMBER_ID

# select count(rr.MEMBER_ID)
# from (SELECT rr.member_id, count(rr.MEMBER_ID)
#     from MEMBER_PROFILE mp join REST_REVIEW rr on mp.MEMBER_ID = rr.MEMBER_ID
#     group by rr.MEMBER_ID
#     order by count(rr.MEMBER_ID) desc)
    
# SELECT mp.MEMBER_NAME, rr.REVIEW_TEXT, date_format(rr.REVIEW_DATE,"%Y-%m-%d") as REVIEW_DATE
# from MEMBER_PROFILE mp join REST_REVIEW rr on mp.MEMBER_ID = rr.MEMBER_ID
# order by REVIEW_DATE, REVIEW_TEXT

SELECT I.MEMBER_NAME, R.REVIEW_TEXT,DATE_FORMAT(R.REVIEW_DATE, '%Y-%m-%d') as REVIEW_DATE
FROM MEMBER_PROFILE AS I, REST_REVIEW AS R
WHERE I.MEMBER_ID = R.MEMBER_ID AND R.MEMBER_ID = (
    SELECT MEMBER_ID
    FROM REST_REVIEW
    GROUP BY MEMBER_ID
    ORDER BY COUNT(REVIEW_ID) DESC
    LIMIT 1
)
ORDER BY REVIEW_DATE, REVIEW_TEXT