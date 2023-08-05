-- 코드를 입력하세요
SELECT outs.ANIMAL_ID, outs.ANIMAL_TYPE, outs.NAME
from animal_outs outs join ANIMAL_INS ins on ins.animal_id = outs.animal_id
where ins.SEX_UPON_INTAKE like "%Intact%" and outs.SEX_UPON_OUTCOME not like '%Intact%'
order by outs.ANIMAL_ID