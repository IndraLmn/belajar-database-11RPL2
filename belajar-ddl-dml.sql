 create database sekolah;
 Query OK, 1 row affected (0.002 sec)

 show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
6 rows in set (0.001 sec)

 use sekolah;
 Database changed
  create table siswa(
    -> nis char(10),
    -> nama varchar(100),
    -> jk char(1),
    -> tempat_lahir varchar(50),
    -> tanggal_lahir date,
    -> alamat text,
    -> kelas varchar(10),
    -> nilai float,
    -> jomblo boolean,
    -> primary key(nis)
    -> );
Query OK, 0 rows affected (0.011 sec)

 show tables;
+-------------------+
| Tables_in_sekolah |
+-------------------+
| siswa             |
+-------------------+
1 row in set (0.001 sec)

 desc siswa;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| nis           | char(10)     | NO   | PRI | NULL    |       |
| nama          | varchar(100) | YES  |     | NULL    |       |
| jk            | char(1)      | YES  |     | NULL    |       |
| tempat_lahir  | varchar(50)  | YES  |     | NULL    |       |
| tanggal_lahir | date         | YES  |     | NULL    |       |
| alamat        | text         | YES  |     | NULL    |       |
| kelas         | varchar(10)  | YES  |     | NULL    |       |
| nilai         | float        | YES  |     | NULL    |       |
| jomblo        | tinyint(1)   | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
9 rows in set (0.010 sec)

 insert into siswa values(
    -> '10100018',
    -> 'ADNAN MAULANA',
    -> 'L',
    -> 'SUBANG',
    -> '2007-02-01',
    -> 'CIGADUNG',
    -> '11 RPL 2',
    -> '81.32',
    -> '1');
Query OK, 1 row affected (0.006 sec)

 select * from siswa;
+----------+---------------+------+--------------+---------------+----------+----------+-------+--------+
| nis      | nama          | jk   | tempat_lahir | tanggal_lahir | alamat   | kelas    | nilai | jomblo |
+----------+---------------+------+--------------+---------------+----------+----------+-------+--------+
| 10100018 | ADNAN MAULANA | L    | SUBANG       | 2007-02-01    | CIGADUNG | 11 RPL 2 | 81.32 |      1 |
+----------+---------------+------+--------------+---------------+----------+----------+-------+--------+
1 row in set (0.003 sec)

 update siswa set tempat_lahir = "BANDUNG" where nis= 10100018;
Query OK, 1 row affected (0.009 sec)
Rows matched: 1  Changed: 1  Warnings: 0
 update siswa set tanggal_lahir = '2005-05-05' where nis= 10100018;
Query OK, 1 row affected (0.004 sec)
Rows matched: 1  Changed: 1  Warnings: 0

 select * from siswa;
+----------+---------------+------+--------------+---------------+----------+----------+-------+--------+
| nis      | nama          | jk   | tempat_lahir | tanggal_lahir | alamat   | kelas    | nilai | jomblo |
+----------+---------------+------+--------------+---------------+----------+----------+-------+--------+
| 10100018 | ADNAN MAULANA | L    | BANDUNG      | 2005-05-05    | CIGADUNG | 11 RPL 2 | 81.32 |      1 |
+----------+---------------+------+--------------+---------------+----------+----------+-------+--------+
1 row in set (0.001 sec)

 delete from siswa
    -> where nis='10100018';
Query OK, 1 row affected (0.006 sec)

 insert into siswa values(
    -> '12100251',
    -> 'FAHMI MAULANA FADILA',
    -> 'L',
    -> 'SUBANG',
    -> '2006-08-05',
    -> 'SUMBERSARI',
    -> '11 RPL 2',
    -> '99.99',
    -> '1');
Query OK, 1 row affected (0.002 sec)

 insert into siswa values(
    -> '12100686',
    -> 'SALSA AMELIA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-03-01',
    -> 'BBKN CURUG',
    -> '11 RPL 2',
    -> '20.24',
    -> '0');
Query OK, 1 row affected (0.005 sec)

 insert into siswa values(
    -> '12100492',
    -> 'MUHAMMAD TEGEP RAHMANDA',
    -> 'L',
    -> 'SUBANG',
    -> '2006-02-23',
    -> 'BALE NYENGKED',
    -> '11 RPL 2',
    -> '10.21',
    -> '1');
Query OK, 1 row affected (0.005 sec)

 insert into siswa values(
    -> '12100193',
    -> 'DIAN WINATA',
    -> 'L',
    -> 'SUBANG',
    -> '2006-03-19',
    -> 'BBKN BANDUNG',
    -> '11 RPL 2',
    -> '89.99',
    -> '1');
Query OK, 1 row affected (0.004 sec)

 insert into siswa values(
    -> '12100523',
    -> 'NAUFAL IRFAN HAIDAR',
    -> 'L',
    -> 'SUBANG',
    -> '2006-05-04',
    -> 'CIJAMBE',
    -> '11 RPL 2',
    -> '88.32',
    -> '0');
Query OK, 1 row affected (0.004 sec)

 select * from siswa;
+----------+-------------------------+------+--------------+---------------+---------------+----------+-------+--------+
| nis      | nama                    | jk   | tempat_lahir | tanggal_lahir | alamat        | kelas    | nilai | jomblo |
+----------+-------------------------+------+--------------+---------------+---------------+----------+-------+--------+
| 12100193 | DIAN WINATA             | L    | SUBANG       | 2006-03-19    | BBKN BANDUNG  | 11 RPL 2 | 89.99 |      1 |
| 12100251 | FAHMI MAULANA FADILA    | L    | SUBANG       | 2006-08-05    | SUMBERSARI    | 11 RPL 2 | 99.99 |      1 |
| 12100492 | MUHAMMAD TEGEP RAHMANDA | L    | SUBANG       | 2006-02-23    | BALE NYENGKED | 11 RPL 2 | 10.21 |      1 |
| 12100523 | NAUFAL IRFAN HAIDAR     | L    | SUBANG       | 2006-05-04    | CIJAMBE       | 11 RPL 2 | 88.32 |      0 |
| 12100686 | SALSA AMELIA            | P    | SUBANG       | 2006-03-01    | BBKN CURUG    | 11 RPL 2 | 20.24 |      0 |
+----------+-------------------------+------+--------------+---------------+---------------+----------+-------+--------+
5 rows in set (0.000 sec)