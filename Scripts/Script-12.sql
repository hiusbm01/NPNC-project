ALTER TABLE BOARD_COMMENT
MODIFY BOARD_COMMENT_DELETE CHAR DEFAULT 'N';
SELECT * FROM BOARD_COMMENT;
ALTER TABLE BOARD_COMMENT MODIFY BOARD_COMMENT_DATE DATE DEFAULT SYSDATE;
