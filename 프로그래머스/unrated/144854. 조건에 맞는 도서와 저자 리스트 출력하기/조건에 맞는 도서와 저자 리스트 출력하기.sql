-- 코드를 입력하세요
SELECT BOOK.book_id, AUTHOR.AUTHOR_NAME, date_format(BOOK.pUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE
from BOOK join AUTHOR on BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID
where BOOK.category = '경제'
order by PUBLISHED_DATE asc