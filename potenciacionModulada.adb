with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Exceptions;  use Ada.Exceptions;

procedure potenciacionModulada is
begin
  declare
    a: Integer;
    b: Integer;
    c: Integer; 
  begin
    Ada.Text_IO.Put_Line("Introduzca los valores de a, b y c: ");
    Ada.Integer_Text_IO.Get(a); --se toman los enteros desde la consola
    Ada.Integer_Text_IO.Get(b);
    Ada.Integer_Text_IO.Get(c);
    new_line;
    if a < 0 or b< 0 or c < 0 then
        Put("Los enteros deben ser no negativos.");
    elsif c >= 2 then
        Put("El valor de la potenciacion modulada a^b mod c es: ");
        new_line;
        if b=0 then
            Put(1);  --en caso de cumplir con las condiciones se realiza el calculo del modulo
        elsif b > 0 then
            Put(((a mod c) * (a**(b-1) mod c)) mod c);
        end if;
    else
        Put("El valor de c debe ser mayor o igual a 2");
    end if;
    exception
      when DATA_ERROR =>
         Put_Line ("Error: Las entradas son números enteros no negativos.");
  end;
end potenciacionModulada;
