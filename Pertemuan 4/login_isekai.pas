program login_isekai;
var
    id,password:string;
begin
    writeln('-----------  LOGIN ISEKAI  -----------');
    writeln('======================================');
    writeln('Masukkan id dan password dengan benar!');
    writeln('======================================');
    write('ID       : '); readln(id);
    write('Password : '); readln(password);
    writeln('======================================');
    if (id='damars56') and (password='12345') then
        begin
            writeln('       Anda berhasil login');
        end
    else if (id='kuda') and (password='xixixboba') then
        begin
            writeln('       Anda berhasil login');
        end
    else if (id='kirito') and (password='asunamylove123') then
        begin
            writeln('       Anda berhasil login');
        end
    else writeln('Anda salah memasukkan id atau password');
    readln;
end.
