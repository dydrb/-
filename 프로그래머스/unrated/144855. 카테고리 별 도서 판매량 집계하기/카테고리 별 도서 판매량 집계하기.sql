-- 코드를 입력하세요
SELECT book.category, sum(book_sales.sales) as total_sales
from book join book_sales on book.book_id = book_sales.book_id
where book_sales.sales_date like '%2022-01%'
group by book.category
order by book.category asc