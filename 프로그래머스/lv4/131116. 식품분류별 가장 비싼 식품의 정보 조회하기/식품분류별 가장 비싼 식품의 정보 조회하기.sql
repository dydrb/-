-- 코드를 입력하세요
SELECT CATEGORY, MAX(PRICE), PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE CATEGORY IN ('과자', '국', '김치', '식용유') AND PRICE IN (SELECT MAX(PRICE) 
                                                              FROM FOOD_PRODUCT 
                                                              GROUP BY CATEGORY)
GROUP BY CATEGORY
ORDER BY MAX(PRICE) DESC

# SELECT category, max(price), PRODUCT_NAME
# from FOOD_PRODUCT
# where category in ("과자","국","김치","식용유")
# group by category

# select CATEGORY, PRICE AS MAX_PRICE, PRODUCT_NAME 
# from food_product
# where (category, price) in ( SELECT category, max(price) as price
#                              from FOOD_PRODUCT 
#                              where category in ('과자', '국', '김치', '식용유') 
#                              group by category) 
# order by price desc