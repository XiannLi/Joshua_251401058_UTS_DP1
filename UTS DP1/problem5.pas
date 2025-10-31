// 5. Kamu adalah seorang programmer muda yang dipercaya oleh seorang guru terkenal di dunia virtual 
// untuk menyelesaikan sebuah misi penting. 
// Di dunia ini, ada sebuah game edukasi di mana setiap pemain harus mencetak pola angka tertentu 
// untuk membuka pintu rahasia menuju level selanjutnya. 
// Namun, setiap angka harus dilengkapi dengan informasi apakah angka tersebut merupakan angka genap atau ganjil.
// Misi Utama: Bantu seorang siswa di dunia virtual ini menyelesaikan pola angka dari 1 hingga N. 
// Setiap angka yang dicetak harus memiliki label sebagai angka (genap) atau (ganjil) 
// agar siswa bisa membuka pintu ke level selanjutnya
// Ketentuan :
// - Siswa dapat memasukkan namanya
// - Program harus menerima input berupa angka N yang menentukan batas akhir barisan angka.
// - Setiap angka dalam barisan dari 1 hingga N harus diberikan label "genap" atau "ganjil".
// - Cetak hasilnya sesuai dengan pola yang diinginkan, dengan setiap angka dan label dicetak di satu baris baru.
// - Kamu harus memilih jenis perulangan yang ingin digunakan, antara while atau repeat-until.
// Input:
// Masukkan n: 5
// Output:
// Alya, inilah pola angka rahasiamu:
// 1 (ganjil)
// 2 (genap) 2 (genap)
// 3 (ganjil) 3 (ganjil) 3 (ganjil)
// 4 (genap) 4 (genap) 4 (genap) 4 (genap)
// 5 (ganjil) 5 (ganjil) 5 (ganjil) 5 (ganjil) 5 (ganjil)
// Selamat, Alya! Kamu berhasil membuka pintu rahasia ke level berikutnya!

program problem5;
uses crt;

var nama: string;
    n, i, j: integer;

begin
    clrscr;
    write ('Nama: ');
    readln (nama);
    write ('Masukkan n: ');
    readln (n);

    writeln (nama, ', inilah pola angka rahasiamu: ');
    for i := 1 to n do
        begin
            for j := 1 to i do
                begin
                    if (i mod 2) = 0 then
                        write (i, ' (genap)', ' ')
                    else
                        write (i, ' (ganjil)', ' ');                       
                end; 
            writeln;      
        end;
    writeln ('Selamat, ', nama, '! Kamu berhasil membuka pintu rahasia ke level berikutnya!');
end.
