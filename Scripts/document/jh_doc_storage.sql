--전체 생성된 테이블 조회
SELECT table_name 
FROM user_tables;

SELECT * FROM ER_DOCUMENT ed ;
SELECT * from ER_APPROVAL_LINE ;
SELECT * FROM MEMBER;
SELECT * FROM ER_AL_STORAGE;
SELECT * FROM ER_APPROVAL_LINE eal ;
SELECT * FROM ER_FORM ef;
SELECT * FROM ER_FORM_FOLDER eff ;
SELECT * FROM ER_STORAGE es ;
SELECT * FROM ER_DOCUMENT ed ;

DROP TABLE ER_STORAGE CASCADE CONSTRAINTS;

--테이블 생성
CREATE TABLE ER_STORAGE (
	ER_STOARGE_KEY		NUMBER	NOT NULL,
	ER_STORAGE_FOLDER_KEY		NUMBER	NOT NULL,
	ER_STORAGE_NAME		VARCHAR2(100) NOT NULL,
	ER_STORAGE_TERM		NUMBER	DEFAULT 5 NOT NULL,
	ER_STORAGE_MANAGER	NUMBER	NOT NULL,
	ER_STORAGE_ORDERBY	NUMBER	NULL
);
ALTER TABLE ER_STORAGE RENAME column ER_STORAGE_TEMR TO ER_STORAGE_TERM;


--pk
ALTER TABLE ER_STORAGE ADD CONSTRAINT PK_ER_STORAGE_KEY PRIMARY KEY (
	ER_STOARGE_KEY
);
--fk
ALTER TABLE ER_STORAGE ADD CONSTRAINT FK_ER_STORAGE_MANAGER 
FOREIGN KEY (ER_STORAGE_MANAGER) REFERENCES member(member_key);
--전자문서보관함 폴더는 나중에 연결

INSERT INTO ER_STORAGE es values(2, 53, '추가근무 신청서', 5, 8, 3);