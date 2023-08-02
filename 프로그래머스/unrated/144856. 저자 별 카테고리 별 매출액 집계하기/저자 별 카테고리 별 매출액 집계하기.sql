-- 코드를 입력하세요
# 2022년 1월의 도서 판매 데이터를 기준으로 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여, 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력하는 SQL문을 작성해주세요.
# 결과는 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬해주세요.

SELECT a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, sum(b.PRICE*bs.SALES) as TOTAL_SALES
from BOOK b join AUTHOR a on b.AUTHOR_ID = a.AUTHOR_ID join BOOK_SALES bs on b.BOOK_ID = bs.BOOK_ID
where date_format(SALES_DATE, "%Y-%m") = "2022-01"
group by AUTHOR_ID, CATEGORY
order by AUTHOR_ID, CATEGORY desc;

# 저자명 별로 총 판매량의 합계(SUM_SALES)를 조회하는 SQL문을 작성해주세요.
# 정렬 순서는 SUM_SALES를 기준으로 내림차순 정렬해주세요.

# select author_name , sum(sales) as SUM_SALES
# from BOOK_SALES s join BOOK b on b.book_id = s.book_id join AUTHOR a on a.author_id = b.author_id
# group by author_name
# order by SUM_SALES desc