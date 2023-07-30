-- 코드를 입력하세요
SELECT food_type, rest_id, rest_name, FAVORITES
from rest_info
where (FOOD_TYPE, FAVORITES) IN (SELECT FOOD_TYPE, MAX(FAVORITES) over(partition by food_type)
                                 FROM REST_INFO)
order by food_type desc