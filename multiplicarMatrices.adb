with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure multiplicarMatrices is
begin            --Este programa realiza la multiplicacion de las matrices A y B como AXB
	declare      --Al inicializar las matrices se deben colocar el numero de filas y columnas A : array (1 .. filas, 1 .. columnas)
	  A : array (1 .. 2, 1 .. 2) of Integer := (others => (others => 1)); --Se crean las variables para alojar las matrices
	  B : array (1 .. 2, 1 .. 2) of Integer := (others => (others => 1));
	  N : Natural := A'Length;
	  M : Natural := B'Length(1);
	  R : array (1 .. N, 1 .. M) of Integer := (others => (others => 0));
	begin
	  A := ((1,2),(3,4));  --Se deben colocar las matrices con el mismo formato y los valores deseados
	  B := ((2 ,5),(6, 7));
	  for i in 1..A'Length loop
		for j in 1..B'Length loop
		  R(i,j) := 0 ;
		  for k in 1..A'Length(1) loop
			R(i,j) := R(i,j) + A(i,k)*B(k,j);
		  end loop;
		end loop;
	  end loop;
	  Put("La multiplicación de las matrices da como resultado: ");
	  new_line;
	  for i in 1..R'Length loop
		for j in 1..R'Length(1) loop
		  Put(R(i,j));
		end loop;
		new_line;
	  end loop;
	end;
end multiplicarMatrices;

