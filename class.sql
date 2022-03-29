CREATE TABLE 질병
(
	질병코드             CHAR(18) NOT NULL ,
	질병명               VARCHAR(50) NULL ,
	증상                 VARCHAR(50) NULL 
);

CREATE UNIQUE INDEX XPK질병 ON 질병
(질병코드   ASC);

ALTER TABLE 질병
	ADD CONSTRAINT  XPK질병 PRIMARY KEY (질병코드);
    
CREATE TABLE 환자
(
	환자번호             CHAR(18) NOT NULL ,
	이름                 CHAR(18) NULL ,
	질병코드             CHAR(18) NOT NULL ,
	나이                 int NULL 
);

CREATE UNIQUE INDEX XPK환자 ON 환자
(환자번호   ASC);



ALTER TABLE 환자
	ADD CONSTRAINT  XPK환자 PRIMARY KEY (환자번호);



ALTER TABLE 환자
	ADD (CONSTRAINT R_1 FOREIGN KEY (질병코드) REFERENCES 질병 (질병코드));
    


INSERT INTO "질병" VALUES('A01','뇌졸증','어지럼증');
INSERT INTO "질병" VALUES('A02','콜레라','설사');
INSERT INTO "질병" VALUES('A03','기관지염','발열');
INSERT INTO "질병" VALUES('A04','장티푸스','발열');

INSERT INTO "환자" VALUES('P1001','김철수','A01',30);
INSERT INTO "환자" VALUES('P1002','양길현','A03',29);
INSERT INTO "환자" VALUES('P1003','임영수','A01',50);
INSERT INTO "환자" VALUES('Q1001','박한나','A04',40);

SELECT * FROM "환자";
SELECT * FROM "질병";

SELECT * FROM "질병" WHERE "증상"='발열';
SELECT 이름,환자번호,나이 FROM "환자" WHERE "이름"='양길현';

