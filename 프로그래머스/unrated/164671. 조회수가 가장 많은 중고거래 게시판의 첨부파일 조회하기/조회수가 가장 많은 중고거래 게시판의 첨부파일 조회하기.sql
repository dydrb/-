-- 코드를 입력하세요
SELECT concat('/home/grep/src/',f.BOARD_ID,'/',f.FILE_ID,f.FILE_NAME,f.FILE_EXT) as FILE_PATH
from USED_GOODS_BOARD b inner join USED_GOODS_FILE f on b.BOARD_ID = f.BOARD_ID
where VIEWS = (select max(VIEWS) from used_goods_board)
order by f.FILE_ID desc


# SELECT CONCAT('/home/grep/src/',board.board_id,'/',file.file_id,file.file_name,file.file_ext) AS file_path
# FROM used_goods_board board INNER JOIN used_goods_file file ON board.board_id = file.board_id
# WHERE views = (SELECT MAX(views) FROM used_goods_board)
# ORDER BY file.file_id DESC