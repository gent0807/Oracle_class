CREATE TABLE 부서(
부서코드 CHAR(2) NOT NULL,
부서명 VARCHAR(20),
위치 VARCHAR(20),
PRIMARY KEY(부서코드)
);

CREATE TABLE 사원(
사원번호 INT NOT NULL,
이름 VARCHAR(20),
성별 VARCHAR(5),
입사일 DATE,
주소 VARCHAR(70),
부서코드 CHAR(2) NOT NULL,
PRIMARY KEY(사원번호),
FOREIGN KEY(부서코드) REFERENCES 부서(부서코드)
);

INSERT INTO 부서 VALUES('AA', '총무부', '서울');
INSERT INTO 부서 VALUES('BB', '영업부', '대전');
INSERT INTO 부서 VALUES('CC', '기획부', '서울');

INSERT INTO 사원 VALUES(1111, '홍길동', '남', '2004-08-26', '서울시 서대문구 연희동', 'AA');
INSERT INTO 사원 VALUES(2222, '임꺽정', '남', '2005-02-23', '부산시 해운대구', 'AA');
INSERT INTO 사원 VALUES(3333, '박찬호', '남', '2004-08-26', '경기도 성남시 분당구', 'BB');
INSERT INTO 사원 VALUES(4444, '선동열', '남', '2005-08-22', '서울시 마포구 공덕동', 'BB');
INSERT INTO 사원 VALUES(5555, '차두리', '남', '2006-02-23', '서울시 영등포구 여의도동', 'AA');
INSERT INTO 사원 VALUES(6666, '신동엽', '여', '2006-02-20', '서울시 동작구 신대방동', 'BB');

SELECT * FROM 부서;
SELECT * FROM 사원;
SELECT 이름, 주소 FROM 사원 WHERE "이름"='신동엽';
SELECT 이름, 성별, 부서코드 FROM 사원 WHERE "성별"='여' AND "부서코드"='BB'; 
SELECT 이름,성별 FROM 사원 ORDER BY "이름";
SELECT 부서코드, COUNT(*) FROM 사원 GROUP BY 부서코드;
SELECT 이름, 부서명 FROM "부서" INNER JOIN "사원" ON "부서". "부서코드"="사원"."부서코드";

