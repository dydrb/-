-- 코드를 입력하세요.
# (SELECT *
# from APPOINTMENT a join PATIENT p on a.PT_NO = p.PT_NO
# where a.MCDP_CD = "CS" and a.APNT_CNCL_YN = "N"
# group by a.APNT_YMD
# having a.APNT_YMD > "2022-04-13")

SELECT 
    a.APNT_NO,
    p.PT_NAME,
    p.PT_NO,
    d.MCDP_CD,
    d.DR_NAME,
    a.APNT_YMD   
from APPOINTMENT a join PATIENT p on a.PT_NO = p.PT_NO join DOCTOR d on d.DR_ID = a.MDDR_ID
where a.APNT_CNCL_YN = "N" and a.MCDP_CD = "CS" and date_format(APNT_YMD,"%Y-%m-%d") = '2022-04-13'
order by a.APNT_YMD asc