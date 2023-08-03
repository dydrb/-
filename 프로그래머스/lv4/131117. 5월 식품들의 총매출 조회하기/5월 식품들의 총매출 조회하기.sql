-- 코드를 입력하세요
SELECT fo.PRODUCT_ID, fp.PRODUCT_NAME, sum(fo.AMOUNT*fp.PRICE) as "TOTAL_SALES"
from FOOD_ORDER fo join FOOD_PRODUCT fp on fo.PRODUCT_ID = fp.PRODUCT_ID
where extract(year from fo.PRODUCE_DATE) = "2022" and extract(month from fo.PRODUCE_DATE) = "5"
group by fo.PRODUCT_ID
order by TOTAL_SALES desc, fo.PRODUCT_ID asc

# SELECT *
# from FOOD_ORDER fo join FOOD_PRODUCT fp on fo.PRODUCT_ID = fp.PRODUCT_ID