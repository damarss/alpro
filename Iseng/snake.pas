uses crt;

label
  habis, lanjut;

const
  max_panjang = 100;
  batas_x = 80;
  batas_y = 25;
  speed   = 200;

type
  tempat = record
    x, y : integer;
  end;

var
  ekor : array[1..max_panjang] of tempat;
  ujung, makanan : tempat;
  tkn : char;
  i,pjg,skor,spd  : integer;
  mati : boolean;

procedure atur_posisi;
begin
  ujung.x := ekor[pjg].x;
  ujung.y := ekor[pjg].y;
  for i:=pjg downto 2 do begin
    ekor[i].x := ekor[i-1].x;
    ekor[i].y := ekor[i-1].y;
  end;
  gotoxy(ekor[2].x, ekor[2].y); write('@');
  gotoxy(ekor[3].x, ekor[3].y); write('&');
  gotoxy(ekor[pjg-1].x, ekor[pjg-1].y); write('#');
  gotoxy(ujung.x, ujung.y); write(' ');
  for i:=3 to pjg do if((ekor[2].x=ekor[i].x) and (ekor[2].y=ekor[i].y)) then mati:=true;
  delay(speed-spd);
end;

procedure makan;
var beda : boolean;
begin
  inc(skor,5);
  gotoxy(10,26); write('Skor = ',skor);
  repeat
    beda := true;
    makanan.x := random(batas_x-2)+2;
    makanan.y := random(batas_y-2)+2;
    for i:=1 to pjg do
      if((makanan.x=ekor[i].x) and (makanan.y=ekor[i].y)) then beda:=false;
  until beda;

gotoxy(makanan.x, makanan.y); write('o');
  inc(pjg);
  inc(spd,2);
end;

procedure bergerak(c : char);
begin
  if c = 'd' then begin
    repeat
      if((ekor[1].x = makanan.x) and (ekor[1].y = makanan.y)) then makan;
      ekor[1].x := ekor[1].x+1;
      atur_posisi;
      if (ekor[1].x = batas_x) or (ekor[1].y = batas_y) or (ekor[1].x = 1) or (ekor[1].y = 1) then mati := true;
    until keypressed or mati;
    if mati then exit;
    tkn:=readkey;
    if tkn = 'a' then tkn:='d';
  end
  else if c = 's' then begin
    repeat
      if((ekor[1].x = makanan.x) and (ekor[1].y = makanan.y)) then makan;
      ekor[1].y := ekor[1].y+1;
      atur_posisi;
      if (ekor[1].x = batas_x) or (ekor[1].y = batas_y) or (ekor[1].x = 1) or (ekor[1].y = 1) then mati := true;
    until keypressed or mati;
    if mati then exit;
    tkn:=readkey;
    if tkn = 'w' then tkn:='s';
  end
  else if c = 'w' then begin
    repeat
      if((ekor[1].x = makanan.x) and (ekor[1].y = makanan.y)) then makan;
      ekor[1].y := ekor[1].y-1;
      atur_posisi;
      if (ekor[1].x = batas_x) or (ekor[1].y = batas_y) or (ekor[1].x = 1) or (ekor[1].y = 1) then mati := true;
    until keypressed or mati;
    if mati then exit;
    tkn:=readkey;
    if tkn = 's' then tkn:='w';
  end
  else if c = 'a' then begin
    repeat
      if((ekor[1].x = makanan.x) and (ekor[1].y = makanan.y)) then makan;
      ekor[1].x := ekor[1].x-1;
      atur_posisi;
      if (ekor[1].x = batas_x) or (ekor[1].y = batas_y) or (ekor[1].x = 1) or (ekor[1].y = 1) then mati := true;
    until keypressed or mati;
    if mati then exit;
    tkn:=readkey;
    if tkn = 'd' then tkn:='a';
  end;
end;

begin
  tkn:='d';
mati := false;
  randomize;
  pjg := 10; spd := 0;
  makanan.x := random(batas_x-2)+2;
  makanan.y := random(batas_y-2)+2;
  ekor[1].x := 40;
  ekor[1].y := 3;
  for i:=2 to pjg do begin
    ekor[i].x := ekor[i-1].x;
    ekor[i].y := 3;
  end;
lanjut:
  clrscr;
  gotoxy(10,26); write('Skor = ',skor);
  for i:=1 to 80 do begin
    gotoxy(i,1); write('-');
    gotoxy(i,25); write('-');
  end;
  for i:=2 to 24 do begin
    gotoxy(1,i); write('|');
    gotoxy(80,i); write('|');
  end;
  for i:=1 to pjg do begin
    gotoxy(ekor[i].x, ekor[i].y);
    write('&');
  end;
  gotoxy(makanan.x, makanan.y); write('o');
  repeat
    if((tkn='w') or (tkn='a') or (tkn='s') or (tkn='d')) then bergerak(tkn)
    else begin
      repeat
        gotoxy(20,11); write('          Paused Game');
        repeat
          gotoxy(20,13); write('Press w, a, s or d to continue'); delay(200);
          gotoxy(20,13); write('                                '); delay(200);
        until keypressed;
        tkn:=readkey;
    until((tkn='w') or (tkn='a') or (tkn='s') or (tkn='d')); goto lanjut;
    end;
    if mati then goto habis;
  until (tkn = #27) or mati;

habis:
  gotoxy(20,10); write(' You lose');

  readln;
end.
