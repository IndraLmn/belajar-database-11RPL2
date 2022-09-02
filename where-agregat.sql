WHERE tempat_lahir = 'Bandung' OR tempat_lahir = 'Ciamis';
WHERE tempat_lahir = 'Bandung' OR jk = 'L';
WHERE tempat_lahir = 'Bandung' OR jk = 'L' OR alamat = 'Subang';
WHERE tempat_lahir = 'Bandung' AND jk = 'L';
WHERE alamat = 'Subang' AND jk = 'L';
WHERE tempat_lahir = 'Subang' ORDER BY nilai DESC;
WHERE tempat_lahir = 'Subang' ORDER BY nilai ASC;
WHERE tempat_lahir = 'Bandung' ORDER BY nilai ASC;
WHERE tempat_lahir = 'Bandung' ORDER BY nama ASC;
WHERE tempat_lahir = 'Bandung' ORDER BY nama DESC;
WHERE tempat_lahir = 'Subang' ORDER BY nama DESC;
SELECT * FROM `siswa` ORDER BY  tanggal_lahir DESC;
SELECT * FROM `siswa` ORDER BY  tanggal_lahir ASC;
WHERE nama LIKE 'a%';
WHERE nama LIKE '%O';
WHERE nama LIKE '%A';
WHERE nama LIKE '%AI%';
WHERE nama LIKE '%PUT%';
WHERE alamat LIKE '%NG';
WHERE alamat LIKE 'U%';
SELECT tempat_lahir FROM `siswa` GROUP BY tempat_lahir;
SELECT jk FROM `siswa` GROUP BY jk;
WHERE nilai BETWEEN 60 AND 80;
WHERE nama BETWEEN 'A%' AND 'E%';
WHERE nama BETWEEN 'M' AND 'T';

SELECT nama, kelas, nilai AS nilai_lebih_kkm FROM `siswa`
WHERE nilai >= 78;

SELECT nama, kelas, nilai AS nilai_lebih_kkm FROM `siswa`
WHERE tempat_lahir = 'Subang' AND nilai >= 78 ORDER BY nilai_lebih_kkm DESC;

SELECT nama, kelas, jk, nilai AS nilai_50_80 FROM `siswa`
WHERE jk = "L" AND nilai BETWEEN 50 AND 80 ORDER BY nilai DESC;

SELECT tempat_lahir, COUNT(nis) AS jumlah_orang FROM siswa
GROUP BY tempat_lahir;

SELECT jk, MAX(nis) AS nilai_tertinggi, MIN(nilai) AS nilai_terendah FROM siswa
GROUP BY jk;

SELECT jk,
	AVG(nilai) AS rerata,
    MAX(nilai) AS nilai_tertinggi, 
    MIN(nilai) AS nilai_terendah,
    SUM(nilai) AS jumlah_nilai
FROM siswa GROUP BY jk;