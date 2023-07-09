program menentukan_kondisi_air;
var
    suhu: integer;
begin
    writeln('Program Menentukan Kondisi Air');
    writeln('==============================');
    write('Suhu (dalam celcius) = '); readln(suhu);
    if suhu<=0 then
        begin
            writeln('Kondisi air pada suhu ',suhu,' derajad celcius: Beku');
        end
    else if suhu<100 then
        begin
            writeln('Kondisi air pada suhu ',suhu,' derajad celcius: Cair');
        end
    else 
        begin
            writeln('Kondisi air pada suhu ',suhu,' derajad celcius: Uap');
        end;
    readln;
end.
