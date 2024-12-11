SELECT * FROM ViewAvgHargaProdukKategori


CREATE VIEW ViewAvgHargaProdukKategori AS
SELECT
Kategori.Kategori,
AVG(Produk.Harga) AS HargaRataRata
FROM
Produk
INNER JOIN
Kategori ON Kategori.ID_Kategori = Produk.ID_Kategori
GROUP BY Kategori.Kategori