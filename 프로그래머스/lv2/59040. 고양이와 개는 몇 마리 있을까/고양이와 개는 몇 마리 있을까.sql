-- 5. 보호 시작 시 상태(INTAKE_CONDITION)이 'Normal'인 동물 중에서 생물 종별로 각각 몇 마리인지 조회하는 SQL문을 작성해주세요.
SELECT ANIMAL_TYPE, count(*)
from animal_ins
group by ANIMAL_TYPE
order by animal_type asc;