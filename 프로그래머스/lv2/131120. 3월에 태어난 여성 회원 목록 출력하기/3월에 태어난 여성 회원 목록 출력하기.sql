-- 3월에 태어난 여성 회원 목록 출력하기 (LV 2) MEMBER_PROFILE 테이블에서 성별로 몇명인지 조회하는 SQL문을 작성해주세요.
# SELECT gender, count(*)
# from member_profile
# group by gender

SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH
FROM MEMBER_PROFILE 
WHERE DATE_FORMAT(DATE_OF_BIRTH, '%m') = '03'
AND TLNO IS NOT NULL
AND GENDER = 'W'
ORDER BY MEMBER_ID ASC;