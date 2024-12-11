CREATE VIEW View_Pegawai_Jabatan AS
SELECT 
    pg.ID_Pegawai,
    pg.Nama_Pegawai,
    pg.Alamat,
    pg.No_Tlp,
    pg.Tanggal_Lahir,
    pg.Tanggal_Masuk,
    pg.Status_Pegawai,
    j.Nama_Jabatan
FROM 
    Pegawai pg
JOIN 
    Jabatan j ON pg.ID_Jabatan = j.ID_Jabatan;


SELECT * FROM View_Pegawai_Jabatan;