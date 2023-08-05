-- 코드를 입력하세요

# (SELECT 
#     extract(hour from DATETIME) as hour, 
#     count(extract(hour from DATETIME)) as count
# from ANIMAL_OUTS 
# group by hour)

SET @HOUR = -1;
SELECT (@HOUR := @HOUR +1) AS HOUR,
    (SELECT COUNT(HOUR(DATETIME)) 
    FROM ANIMAL_OUTS 
    WHERE HOUR(DATETIME)=@HOUR) AS COUNT 
    FROM ANIMAL_OUTS
WHERE @HOUR < 23;