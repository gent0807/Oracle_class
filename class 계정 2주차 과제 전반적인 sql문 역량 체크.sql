CREATE TABLE �μ�(
�μ��ڵ� CHAR(2) NOT NULL,
�μ��� VARCHAR(20),
��ġ VARCHAR(20),
PRIMARY KEY(�μ��ڵ�)
);

CREATE TABLE ���(
�����ȣ INT NOT NULL,
�̸� VARCHAR(20),
���� VARCHAR(5),
�Ի��� DATE,
�ּ� VARCHAR(70),
�μ��ڵ� CHAR(2) NOT NULL,
PRIMARY KEY(�����ȣ),
FOREIGN KEY(�μ��ڵ�) REFERENCES �μ�(�μ��ڵ�)
);

INSERT INTO �μ� VALUES('AA', '�ѹ���', '����');
INSERT INTO �μ� VALUES('BB', '������', '����');
INSERT INTO �μ� VALUES('CC', '��ȹ��', '����');

INSERT INTO ��� VALUES(1111, 'ȫ�浿', '��', '2004-08-26', '����� ���빮�� ����', 'AA');
INSERT INTO ��� VALUES(2222, '�Ӳ���', '��', '2005-02-23', '�λ�� �ؿ�뱸', 'AA');
INSERT INTO ��� VALUES(3333, '����ȣ', '��', '2004-08-26', '��⵵ ������ �д籸', 'BB');
INSERT INTO ��� VALUES(4444, '������', '��', '2005-08-22', '����� ������ ������', 'BB');
INSERT INTO ��� VALUES(5555, '���θ�', '��', '2006-02-23', '����� �������� ���ǵ���', 'AA');
INSERT INTO ��� VALUES(6666, '�ŵ���', '��', '2006-02-20', '����� ���۱� �Ŵ�浿', 'BB');

SELECT * FROM �μ�;
SELECT * FROM ���;
SELECT �̸�, �ּ� FROM ��� WHERE "�̸�"='�ŵ���';
SELECT �̸�, ����, �μ��ڵ� FROM ��� WHERE "����"='��' AND "�μ��ڵ�"='BB'; 
SELECT �̸�,���� FROM ��� ORDER BY "�̸�";
SELECT �μ��ڵ�, COUNT(*) FROM ��� GROUP BY �μ��ڵ�;
SELECT �̸�, �μ��� FROM "�μ�" INNER JOIN "���" ON "�μ�". "�μ��ڵ�"="���"."�μ��ڵ�";

