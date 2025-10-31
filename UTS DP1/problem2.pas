// 2. Seorang asisten laboratorium sedang memeriksa tugas praktikan-praktikannya. 
// Karena sudah di akhir semester, ia harus memberikan indeks yang tepat bagi masing-masing praktikannya berdasarkan 
// nilai yang sudah dihitungnya. Sebab disibukkan dengan tugasnya yang lain, 
// ia memutuskan untuk membuat program yang dapat meningkatkan efisiensi kerjanya. 
// Program tersebut akan mengategorikan nilai di atas 90 sebagai A, di atas 85 sebagai B+, di atas 75 sebagai C+, 
// di atas 70 sebagai C, di atas 65 sebagai D, dan selain yang tersebut sebagai E. 
// Program tersebut hanya dapat menerima 5 nilai akhir dalam sekali jalan, 
// kemudian akan mengeluarkan berapa total praktikan yang lulus (indeks nilai di atas D) 
// dan berapa total praktikan yang harus mengulang tahun depan.

// Input:
// Nama Praktikan 1: Edric
// Nilai Akhir: 78
// Nama Praktikan 2: Alya
// Nilai Akhir: 90
// Nama Praktikan 3: Umri
// Nilai Akhir: 65
// Nama Praktikan 4: Dewi
// Nilai Akhir: 70
// Nama Praktikan 5: Dzakwan
// Nilai Akhir: 45

// Output:
// Indeks Nilai Praktikan 1: C+
// Indeks Nilai Praktikan 2: A
// Indeks Nilai Praktikan 3: D
// Indeks Nilai Praktikan 4: C
// Indeks Nilai Praktikan 5: E
// Total Praktikan Lulus: 3
// Total Praktikan Mengulang: 2

program problem2;
uses crt;

var n1, n2, n3, n4, n5, lulus, ulang: integer;
    nama1, nama2, nama3, nama4, nama5, i1, i2, i3, i4, i5: string;

begin
    clrscr;
    lulus := 0;
    ulang := 0;

    write ('Nama Praktikan 1: ');
    readln (nama1);
    write ('Nilai Akhir: ');
    readln (n1);

    write ('Nama Praktikan 2: ');
    readln (nama2);
    write ('Nilai Akhir: ');
    readln (n2);

    write ('Nama Praktikan 3: ');
    readln (nama3);
    write ('Nilai Akhir: ');
    readln (n3);

    write ('Nama Praktikan 4: ');
    readln (nama4);
    write ('Nilai Akhir: ');
    readln (n4);

    write ('Nama Praktikan 5: ');
    readln (nama5);
    write ('Nilai Akhir: ');
    readln (n5);

    if (n1 < 0) or (n1 > 100) then
        begin
            i1 := 'TIDAK VALID';
            writeln('Nilai untuk praktikan 1 tidak valid (0-100).');
        end
    else
        begin
            if (n1 >= 90) then
                i1 := 'A'
            else if (n1 >= 85) then
                i1 := 'B+'
            else if (n1 >= 75) then
                i1 := 'C+'
            else if (n1 >= 70) then
                i1 := 'C'
            else if (n1 >= 65) then
                i1 := 'D'
            else
                i1 := 'E';
        end;

    if (n2 < 0) or (n2 > 100) then
        begin
            i2 := 'TIDAK VALID';
            writeln('Nilai untuk praktikan 2 tidak valid (0-100).');
        end
    else
        begin
            if (n2 >= 90) then
                i2 := 'A'
            else if (n2 >= 85) then
                i2 := 'B+'
            else if (n2 >= 75) then
                i2 := 'C+'
            else if (n2 >= 70) then
                i2 := 'C'
            else if (n2 >= 65) then
                i2 := 'D'
            else
                i2 := 'E';
        end;

    if (n3 < 0) or (n3 > 100) then
        begin
            i3 := 'TIDAK VALID';
            writeln('Nilai untuk praktikan 3 tidak valid (0-100).');
        end
    else
        begin
            if (n3 >= 90) then
                i3 := 'A'
            else if (n3 >= 85) then
                i3 := 'B+'
            else if (n3 >= 75) then
                i3 := 'C+'
            else if (n3 >= 70) then
                i3 := 'C'
            else if (n3 >= 65) then
                i3 := 'D'
            else
                i3 := 'E';
        end;

    if (n4 < 0) or (n4 > 100) then
        begin
            i4 := 'TIDAK VALID';
            writeln('Nilai untuk praktikan 4 tidak valid (0-100).');
        end
    else
        begin
            if (n4 >= 90) then
                i4 := 'A'
            else if (n4 >= 85) then
                i4 := 'B+'
            else if (n4 >= 75) then
                i4 := 'C+'
            else if (n4 >= 70) then
                i4 := 'C'
            else if (n4 >= 65) then
                i4 := 'D'
            else
                i4 := 'E';
        end;

    if (n5 < 0) or (n5 > 100) then
        begin
            i5 := 'TIDAK VALID';
            writeln('Nilai untuk praktikan 5 tidak valid (0-100).');
        end
    else
        begin
            if (n5 >= 90) then
                i5 := 'A'
            else if (n5 >= 85) then
                i5 := 'B+'
            else if (n5 >= 75) then
                i5 := 'C+'
            else if (n5 >= 70) then
                i5 := 'C'
            else if (n5 >= 65) then
                i5 := 'D'
            else
                i5 := 'E';
        end;

    writeln ('Indeks Nilai Praktikan 1: ', i1);
    writeln ('Indeks Nilai Praktikan 2: ', i2);
    writeln ('Indeks Nilai Praktikan 3: ', i3);
    writeln ('Indeks Nilai Praktikan 4: ', i4);
    writeln ('Indeks Nilai Praktikan 5: ', i5);

    if (n1 >= 0) and (n1 <= 100) then
        begin
            if (n1 >= 70) then lulus := lulus + 1
            else ulang := ulang + 1
        end;

    if (n2 >= 0) and (n2 <= 100) then
        begin
            if (n2 >= 70) then lulus := lulus + 1
            else ulang := ulang + 1
        end;

    if (n3 >= 0) and (n3 <= 100) then
        begin
            if (n3 >= 70) then lulus := lulus + 1
            else ulang := ulang + 1
        end;

    if (n4 >= 0) and (n4 <= 100) then
        begin
            if (n4 >= 70) then lulus := lulus + 1
            else ulang := ulang + 1
        end;

    if (n5 >= 0) and (n5 <= 100) then
        begin
            if (n5 >= 70) then lulus := lulus + 1
            else ulang := ulang + 1
        end;
    writeln;
    writeln ('Total Praktikan Lulus: ', lulus);
    writeln ('Total Praktikan Mengulang: ', ulang);
    readln;
end.