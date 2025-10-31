// 4. Buatlah sebuah program yang menerima input berupa angka n, 
// kemudian menentukan dan mencetak semua bilangan prima dari rentang 1 hingga n. 
// Bilangan prima adalah angka yang hanya dapat dibagi dengan angka 1 dan dirinya sendiri.
// Input:
// n = 10
// Output:
// Bilangan prima antara 1 dan 10 adalah:
// 2, 3, 5, 7
// Contoh lain
// Input:
// n = 50
// Output:
// Bilangan prima antara 1 dan 50 adalah:
// 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47

program problem4;
uses crt;

var
    n, i, j, jlh_fktr: integer;
    pertama: boolean;

begin
    clrscr;
    write('n = ');
    readln(n);
    writeln('Bilangan prima antara 1 dan ', n, ' adalah:');

    pertama := true; 

    for i := 1 to n do
    begin
        jlh_fktr := 0; 
        for j := 1 to i do
            begin
                if (i mod j) = 0 then
                    jlh_fktr := jlh_fktr + 1;
            end;

        if (jlh_fktr = 2) then
            begin
                if (pertama = true) then
                    begin
                        write(i);
                        pertama := false;
                    end
                else
                    begin
                        write(', ', i);
                    end;
            end;
    end; 
    writeln; 
    readln;
end.