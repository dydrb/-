-- DOCTOR 테이블에서 진료과별로 고용일자가 가장 빠른 의사를 조회하는 SQL문을 작성해주세요. 고용일자는 년-월-일 형식으로 나와야합니다
SELECT DR_NAME, DR_ID, MCDP_CD, DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') as HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD='CS' or MCDP_CD='GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC