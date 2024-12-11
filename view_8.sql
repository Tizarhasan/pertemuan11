CREATE VIEW View_Pelanggan_Bertransaksi AS
SELECT 
    pl.ID_Pelanggan, 
    pl.Nama_Pelanggan, 
    pl.Alamat, 
    pl.No_Tlp
FROM 
    Pelanggan pl
INNER JOIN 
    Pesanan ps
ON 
    pl.ID_Pelanggan = ps.ID_Pelanggan;

	SELECT * 
FROM View_Pelanggan_Bertransaksi;
