# USER_INFO 테이블과 ONLINE_SALE 테이블에서 
# 2021년에 가입한 전체 회원들 중 상품을 구매한 회원수와 상품을 구매한 회원의 비율(=2021년에 가입한 회원 중 상품을 구매한 회원수 / 2021년에 가입한 전체 회원 수)을 
# 년, 월 별로 출력하는 SQL문을 작성해주세요. 
# 상품을 구매한 회원의 비율은 소수점 두번째자리에서 반올림하고, 
# 전체 결과는 년을 기준으로 오름차순 정렬해주시고 년이 같다면 월을 기준으로 오름차순 정렬해주세요.
-- 코드를 입력하세요
# SELECT *
# from ONLINE_SALE s left join USER_INFO i on s.USER_ID = i.USER_ID
# where joined like '2021%'

SELECT year(s.SALES_DATE) as YEAR, 
       month(s.SALES_DATE) as MONTH, 
       count(distinct s.USER_ID) PUCHASED_USERS, 
       round(count(distinct s.USER_ID) / (SELECT count(*)
                                          from USER_INFO
                                          where joined like '2021%'),1) as PUCHASED_RATIO
 from USER_INFO i, ONLINE_SALE s
 where I.USER_ID = S.USER_ID and joined like '2021%'
 group by YEAR, MONTH
 order by YEAR, MONTH
 
#  USER_INFO 테이블과 ONLINE_SALE 테이블에서 연령대별로(AGE가 20~29 : 20, 30~39 : 30, 40~49 : 40) 판매량이 얼마나 되는지, 연령대(AGE_GROUP)와 연령대별 판매량(TOTAL)을 조회하는 SQL문을 작성해주세요.
# AGE 정보가 없는 사람은 결과에서 제외하고, 연령대를 기준으로 오름차순 정렬해주세요.

# SELECT truncate(AGE, -1) as AGE_GROUP, SUM(SALES_AMOUNT) as TOTAL
# from USER_INFO i JOIN ONLINE_SALE s on i.USER_ID = s.USER_ID
# where AGE is not NULL
# group by AGE_GROUP
# order by AGE_GROUP

# 가입한 전체 회원 중에서 상품을 한 번도 구매하지 않은 회원수가 몇명인지 가입 년, 월 별로 집계하고, 
# 미구매 회원수가 10명 이상인 가입 년, 월, 상품 미구매 회원수를 조회하는 SQL문을 작성해주세요.
# AGE와 GENDER의 정보가 없는 회원은 결과에서 제외해주세요.

# select year(joined) as YEAR, month(joined) as MONTH, count(*) as COUNT
# from ONLINE_SALE s left join USER_INFO i on s.USER_ID = i.USER_ID
# where i.age IS NOT NULL AND i.gender IS NOT NULL 
# group by YEAR, MONTH
# having COUNT >= 10

# select year(joined) as YEAR, month(joined) as MONTH, count(*) as COUNT
# from ONLINE_SALE s join USER_INFO i on s.USER_ID = i.USER_ID
# group by YEAR, MONTH

# ONLINE_SALE 테이블에서 상품을 구매한 회원이 같은 상품에 대해 최초 구매일과 최근 재구매일의 간격일을 '구매 간격일' 이라고 하면,
# 재구매한 회원ID, 재구매된 상품ID, 구매 간격일을 조회하는 SQL문을 작성해주세요. 

# SELECT USER_ID,PRODUCT_ID, DATEDIFF(max(SALES_DATE), min(SALES_DATE)) as 구매_간격일
# from ONLINE_SALE 
# group by user_id, product_id
# having count(*) >= 2