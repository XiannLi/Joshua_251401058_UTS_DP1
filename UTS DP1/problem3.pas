// 3. Jono dan Misi Hitung Angka
// Jono sedang membantu temannya menghitung total dan rata-rata dari sejumlah angka. 
// Dia memutuskan untuk membuat program sederhana yang akan meminta pengguna untuk memasukkan 
// berapa banyak angka yang ingin dihitung.
// Tugas Anda: Buatlah program yang meminta input dari pengguna berupa jumlah angka n, 
// kemudian Jono akan mengumpulkan angka-angka tersebut. 
// Program harus menghitung jumlah total dan rata-rata angka yang dimasukkan.
// Input:
// N : 3
// Angka ke – 1 : 5
// Angka ke – 2: 15
// Angka ke – 3 : 25
// Output:
// Jumlah Total : 45
// Rata – rata : 15.0

program problem3;
uses crt;

var n, i, Sn, angka: integer;
    rata2: real;

begin
    clrscr;
    Sn := 0;
    rata2 := 0;
    write ('N : ');
    readln (n);

    for i := 1 to n do
    begin
        write ('Angka ke - ',i, ' : ');
        readln (angka);
        Sn := Sn + angka;
    end;

    writeln;
    rata2 := Sn / n;

    writeln ('Jumlah total : ', Sn);
    writeln ('Rata-rata : ', rata2:0:2);
end.