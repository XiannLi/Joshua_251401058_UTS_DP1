// 1. Sebuah perusahaan rental mobil menetapkan biaya sewa harian berdasarkan jenis 
// mobil sebagai berikut: - - - 
// Ekonomi: Rp300.000/hari 
// Sedan: Rp400.000/hari 
// SUV: Rp500.000/hari 
// Selain itu, pelanggan juga dikenakan biaya berdasarkan jarak tempuh : - 
// 100 km pertama: Rp1.500/km - - 
// 100 km berikutnya: Rp1.000/km 
// Di atas 200 km: Rp500/km. 
// Buatlah program yang menghitung total biaya sewa mobil berdasarkan jumlah hari 
// dan jarak tempuh yang dilakukan. 
// Input: 
// Masukkan Jenis Mobil (Ekonomi/Sedan/SUV) : SUV 
// Pemesanan Berapa Hari : 3 
// Berkendara Seberapa Jauh (km) : 250 
// Output: 
// 1775000

program problem1;
uses crt;

var jenis: string;
    waktu, jarak: integer;
    harga: longint;

begin
    clrscr;
    write ('Masukkan Jenis Mobil (Ekonomi/Sedan/SUV) : ');
    readln (jenis);
    write ('Pemesanan Berapa Hari : ');
    readln (waktu);
    write ('Berkendara Seberapa Jauh (km) : ');
    readln (jarak);
    
    harga := 0;

    if (jenis = 'Ekonomi') or (jenis = 'ekonomi') then
    begin
        harga := 300000*waktu;
        if (jarak >0) and (jarak <= 100) then 
        harga := harga +  1500*jarak
        else if (jarak > 100) and (jarak <= 200) then
        harga := harga + 1500*100 + 1000*(jarak-100)
        else if (jarak > 200) then
        harga := harga + 1500*100 + 1000*100 + 500*(jarak-200)
        else 
        writeln ('Jarak tidak valid. Silahkan masukkan angka positif untuk jarak dalam km.')
    end;

    if (jenis = 'Sedan') or (jenis = 'sedan') then
    begin
        harga := 400000*waktu;
        if (jarak >0) and (jarak <= 100) then 
        harga := harga +  1500*jarak
        else if (jarak > 100) and (jarak <= 200) then
        harga := harga + 1500*100 + 1000*(jarak-100)
        else if (jarak > 200) then
        harga := harga + 1500*100 + 1000*100 + 500*(jarak-200)
        else 
        writeln ('Jarak tidak valid. Silahkan masukkan angka positif untuk jarak dalam km.')
    end;

    if (jenis = 'SUV') or (jenis = 'suv') then
    begin
        harga := 500000*waktu;
        if (jarak >0) and (jarak <= 100) then 
        harga := harga +  1500*jarak
        else if (jarak > 100) and (jarak <= 200) then
        harga := harga + 1500*100 + 1000*(jarak-100)
        else if (jarak > 200) then
        harga := harga + 1500*100 + 1000*100 + 500*(jarak-200)
        else 
        writeln ('Jarak tidak valid. Silahkan masukkan angka positif untuk jarak dalam km.')
    end;
    writeln (harga);
end.