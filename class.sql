CREATE TABLE ����
(
	�����ڵ�             CHAR(18) NOT NULL ,
	������               VARCHAR(50) NULL ,
	����                 VARCHAR(50) NULL 
);

CREATE UNIQUE INDEX XPK���� ON ����
(�����ڵ�   ASC);

ALTER TABLE ����
	ADD CONSTRAINT  XPK���� PRIMARY KEY (�����ڵ�);
    
CREATE TABLE ȯ��
(
	ȯ�ڹ�ȣ             CHAR(18) NOT NULL ,
	�̸�                 CHAR(18) NULL ,
	�����ڵ�             CHAR(18) NOT NULL ,
	����                 int NULL 
);

CREATE UNIQUE INDEX XPKȯ�� ON ȯ��
(ȯ�ڹ�ȣ   ASC);



ALTER TABLE ȯ��
	ADD CONSTRAINT  XPKȯ�� PRIMARY KEY (ȯ�ڹ�ȣ);



ALTER TABLE ȯ��
	ADD (CONSTRAINT R_1 FOREIGN KEY (�����ڵ�) REFERENCES ���� (�����ڵ�));
    


INSERT INTO "����" VALUES('A01','������','��������');
INSERT INTO "����" VALUES('A02','�ݷ���','����');
INSERT INTO "����" VALUES('A03','�������','�߿�');
INSERT INTO "����" VALUES('A04','��ƼǪ��','�߿�');

INSERT INTO "ȯ��" VALUES('P1001','��ö��','A01',30);
INSERT INTO "ȯ��" VALUES('P1002','�����','A03',29);
INSERT INTO "ȯ��" VALUES('P1003','�ӿ���','A01',50);
INSERT INTO "ȯ��" VALUES('Q1001','���ѳ�','A04',40);

SELECT * FROM "ȯ��";
SELECT * FROM "����";

SELECT * FROM "����" WHERE "����"='�߿�';
SELECT �̸�,ȯ�ڹ�ȣ,���� FROM "ȯ��" WHERE "�̸�"='�����';

