program struktur_if_then_else;
var
    nilai: integer;
begin
    nilai := 45;
    if (nilai > 50) then
        begin
            writeln('Nilai "UTS" lebih besar dari 50');
        end
    else
        begin
            writeln('Nilai "UTS" lebih kecil dari 50');
        end;
    readln;
end.
