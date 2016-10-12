With Ada.Text_IO; Use Ada.Text_IO;

Procedure Determinante is
	type Real_Matrix is array (Integer range <>, Integer range <>) of Integer'Base;
	matriz: Real_Matrix(1..3, 1..3);
	diagonalPrincipal1: Integer;
	diagonalPrincipal2: Integer;
	diagonalPrincipal3: Integer;
	diagonalPrincipalSoma: Integer;
	diagonalSecundaria1: Integer;
	diagonalSecundaria2: Integer;
	diagonalSecundaria3: Integer;
	diagonalSecundariaSoma: Integer;
	det : Integer;

	-- Leitura String
	function Get_String return String is
		Line : String (1 .. 1_000);
		Last : Natural;
	begin
		Get_Line (Line, Last);
		return Line (1 .. Last);
	end Get_String;

	-- Leitura Integer
	function Get_Integer return Integer is
		S : constant String := Get_String;
	begin
		return Integer'Value (S);
	end Get_Integer;

	-- Lê 15 elementos do array
	procedure Faz_Leitura is
	begin
		for L in Integer range 1 .. 3 loop
			for C in Integer range 1 .. 3 loop
				matriz(L, C) := Get_Integer;
			end loop;
		end loop;
	end Faz_Leitura;

begin
	Faz_Leitura;
	diagonalPrincipal1 := matriz(1, 1) * matriz(2, 2) * matriz(3, 3);
	diagonalPrincipal2 := matriz(1, 2) * matriz(2, 3) * matriz(3, 1);
	diagonalPrincipal3 := matriz(1, 3) * matriz(2, 1) * matriz(3, 2);

	diagonalSecundaria1 := matriz(1, 3) * matriz(2, 2) * matriz(3, 1);
	diagonalSecundaria2 := matriz(1, 1) * matriz(2, 3) * matriz(3, 2);
	diagonalSecundaria3 := matriz(1, 2) * matriz(2, 1) * matriz(3, 3);

	diagonalPrincipalSoma := diagonalPrincipal1 + diagonalPrincipal2 + diagonalPrincipal3;
	diagonalSecundariaSoma := diagonalSecundaria1 + diagonalSecundaria2 + diagonalSecundaria3;

	det := diagonalPrincipalSoma - diagonalSecundariaSoma;

	Put_Line(Integer'Image(det));

end Determinante;