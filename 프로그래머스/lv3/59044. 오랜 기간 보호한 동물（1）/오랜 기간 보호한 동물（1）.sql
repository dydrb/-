select ins.name,ins.datetime as DATETIME
from ANIMAL_INS ins left join ANIMAL_OUTS outs on ins.ANIMAL_ID = outs.ANIMAL_ID
where outs.animal_id is null
order by ins.DATETIME
limit 3