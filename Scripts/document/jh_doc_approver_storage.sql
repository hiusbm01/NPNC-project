--전자결재 결재라인
SELECT * FROM MEMBER;
SELECT * FROM ER_AP_LINE_STORAGE;
SELECT * FROM ER_AP_LINE;

--DROP TABLE ER_AP_LINE_STORAGE;

CREATE TABLE ER_AP_LINE_STORAGE (
	ER_AP_LINE_STORAGE_KEY	NUMBER		NOT NULL,
	ER_AP_LINE_STORAGE_NAME	VARCHAR2(50)		NOT NULL,
	MEMBER_KEY	NUMBER		NOT NULL
	);

ALTER TABLE ER_AP_LINE_STORAGE ADD CONSTRAINT PK_ER_AP_LINE_STORAGE PRIMARY KEY (
	ER_AP_LINE_STORAGE_KEY
);

DROP TABLE ER_AP_LINE;

CREATE TABLE ER_AP_LINE (
	ER_AP_LINE_KEY	NUMBER		NOT NULL,
	ER_AP_LINE_STORAGE_KEY	NUMBER		NOT NULL,
	MEMBER_KEY	number		NULL,
	ER_AP_TEAM_KEY VARCHAR2(50)		NULL,
	ER_AP_JOB_KEY	VARCHAR2(50)		NULL,
	ER_AP_NAME	VARCHAR2(50)		NULL,
	ER_AP_CATEGORY	VARCHAR2(50)		NOT NULL,
	ER_AP_ORDERBY	NUMBER		NULL
);

ALTER TABLE ER_AP_LINE ADD CONSTRAINT PK_ER_AP_LINE PRIMARY KEY (
	ER_AP_LINE_KEY
);

INSERT INTO
			er_ap_line_storage
			(
				ER_AP_LINE_STORAGE_KEY,
				ER_AP_LINE_STORAGE_NAME,
				MEMBER_KEY
			)
		VALUES(
			SEQ_ER_AP_LINE_STORAGE_KEY.nextval,
			'결재라인1',
			5
		);
INSERT INTO
			er_ap_line
			(
				ER_AP_LINE_KEY,
				ER_AP_LINE_STORAGE_KEY,
				MEMBER_KEY,
				ER_AP_TEAM_KEY,
				ER_AP_JOB_KEY,
				ER_AP_NAME,
				ER_AP_CATEGORY,
				ER_AP_ORDERBY
			)
		VALUES(
			SEQ_ER_AP_LINE_KEY.nextval,
			2,
			5,
			'D3',
			'J1',
			'박진형',
			'결재',
			2
		);
INSERT INTO
			er_ap_line
			(
				ER_AP_LINE_KEY,
				ER_AP_LINE_STORAGE_KEY,
				MEMBER_KEY,
				ER_AP_TEAM_KEY,
				ER_AP_JOB_KEY,
				ER_AP_NAME,
				ER_AP_CATEGORY,
				ER_AP_ORDERBY
			)
		VALUES(
			SEQ_ER_AP_LINE_KEY.nextval,
			2,
			5,
			'D3',
			'J4',
			'이기수',
			'협조',
			1
		);
--사원별 저장 결재라인, 결재자 조회
SELECT 
	s.ER_AP_LINE_STORAGE_KEY,
	s.ER_AP_LINE_STORAGE_NAME,
	s.MEMBER_KEY,
	l.ER_AP_LINE_KEY,
	l.ER_AP_LINE_STORAGE_KEY,
	l.MEMBER_KEY,
	l.ER_AP_TEAM_KEY,
	d.DEPARTMENT_NAME,
	l.ER_AP_JOB_KEY,
	j.job_name,
	l.ER_AP_NAME,
	l.ER_AP_CATEGORY,
	l.ER_AP_ORDERBY
FROM
	ER_AP_line_STORAGE s
LEFT JOIN 
	ER_AP_LINE l on s.ER_AP_LINE_STORAGE_KEY = l.ER_AP_LINE_STORAGE_KEY
JOIN 
	JOB j ON l.ER_AP_JOB_KEY = j.JOB_KEY
JOIN 
	DEPARTMENT d ON l.ER_AP_TEAM_KEY = d.DEPARTMENT_KEY 
WHERE
	s.MEMBER_KEY = ${no}
ORDER BY
	s.ER_AP_LINE_STORAGE_KEY DESC;
		
DROP SEQUENCE SEQ_ER_AP_STORAGE_KEY;

CREATE SEQUENCE SEQ_ER_AP_LINE_STORAGE_KEY
START WITH 1
INCREMENT BY 1
NOMINVALUE
NOMAXVALUE
NOCYCLE
CACHE 20;
CREATE SEQUENCE SEQ_ER_AP_LINE_KEY
START WITH 1
INCREMENT BY 1
NOMINVALUE
NOMAXVALUE
NOCYCLE
CACHE 20;

SELECT SEQ_ER_AP_LINE_STORAGE_KEY.nextval FROM DUAL;