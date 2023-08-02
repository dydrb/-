-- 코드를 입력하세요
# select j.flavor
# from
# (SELECT flavor, sum(total_order) as total
# from july 
# group by flavor) j join
# (SELECT flavor, sum(total_order) as total
# from FIRST_HALF 
# group by flavor) fh on j.flavor = fh.flavor
# order by fh.TOTAL + j.TOTAL DESC limit 3

SELECT fh.FLAVOR
FROM (SELECT FLAVOR, SUM(TOTAL_ORDER) TOTAL FROM FIRST_HALF GROUP BY FLAVOR) fh,
(SELECT FLAVOR, SUM(TOTAL_ORDER) TOTAL FROM JULY GROUP BY FLAVOR) j
WHERE fh.FLAVOR = j.FLAVOR
ORDER BY fh.TOTAL + j.TOTAL DESC
LIMIT 3

# SELECT J.FLAVOR
# FROM FIRST_HALF F JOIN JULY J ON F.FLAVOR = J.FLAVOR
# GROUP BY J.FLAVOR
# ORDER BY F.TOTAL_ORDER + J.TOTAL_ORDER DESC
# LIMIT 3