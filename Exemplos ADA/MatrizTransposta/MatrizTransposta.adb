With Ada.Text_IO; Use Ada.Text_IO;

Procedure MatrizTransposta is
	type Real_Matrix is array (Integer range <>, Integer range <>) of Integer'Base;
	matriz: Real_Matrix(1..4, 1..4);
	matrizResultado: Real_Matrix(1..4, 1..4);

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
		for L in Integer range 1 .. 4 loop
			for C in Integer range 1 .. 4 loop
				matriz(L, C) := Get_Integer;
			end loop;
		end loop;
	end Faz_Leitura;

	procedure Print_Resultado is
	begin
		for L in Integer range 1 .. 4 loop
			for C in Integer range 1 .. 4 loop
				Put(Integer'Image(matrizResultado(L, C)));
				Put(" ");
			end loop;
			Put_Line("");
		end loop;
	end Print_Resultado;

	procedure TranspoeMatriz is
	begin
		for L in Integer range 1 .. 4 loop
			for C in Integer range 1 .. 4 loop
				matrizResultado(C, L) := matriz(L, C);
			end loop;
		end loop;
	end TranspoeMatriz;
begin
	Faz_Leitura;
	TranspoeMatriz;
	Print_Resultado;
end MatrizTransposta;