{ 1}Program Contoh81;
{ 2}uses crt;
{ 3}type Hari1pekan =(Ahad,Senin,Selasa,Rabu,Kamis,Jumat,Sabtu);
{ 4}     haribulan=1..31;
         bulan=(Januari, Februari, Maret, April, Mei, Juni, Juli, Agustus, September, Oktober, November, Desember);
{ 5}
{ 6}var i,awalbulan:hari1pekan;
{ 7}    j,akhirbulan:haribulan;
{ 8}    x,y,k,lebar,tahun:integer;
        b:bulan;
{ 9}    
{10}begin
{11}    clrscr;
		write('Tahun: ');
		readln(tahun);
{12}    write('Hari pertama awal bulan: ');
{13}    readln(awalbulan);

        x:=ord(awalbulan);
{17}    lebar:=7;
        writeln(tahun:25);
{18}    for b:=Januari to Desember do
        begin
            case ord(b) of
                0: 	begin
						akhirbulan:=31;
						y:=6;
					end;
                1: 	begin
						if ((tahun mod 4)<>0) then akhirbulan:=28
						else akhirbulan:=29;
						y:=13;
					end;
                2: 	begin
						akhirbulan:=31;
						y:=20;
					end;
                3: 	begin
						akhirbulan:=30;
						y:=27;
					end;
                4: 	begin
						akhirbulan:=31;
						y:=34;
					end;
                5: 	begin
						akhirbulan:=30;
						y:=41;
					end;
                6: 	begin
						akhirbulan:=31;
						y:=48;
					end;
                7: 	begin
						akhirbulan:=31;
						y:=55;
					end;
                8: 	begin
						akhirbulan:=30;
						y:=62;
					end;
                9: 	begin
						akhirbulan:=31;
						y:=69;
					end;
                10:	begin
						akhirbulan:=30;
						y:=76;
					end;
                11: begin
						akhirbulan:=31;
						y:=83;
					end;
            end;
            writeln(b);
            for i:=Ahad to sabtu do
{19}           write(i:lebar);
            writeln;
{20}    
{23}        for j:=1 to akhirbulan do
{24}          begin
{25}            if x=7 then
{26}            begin 
{27}                x:=0;
{28}              y:=y+1;
{29}            end;
{30}            gotoxy(lebar*x+1,y);write(j:3);
{31}            x:=x+1;
{32}          end;
			  writeln;
        end;
{33}    readln;
{34}end.
