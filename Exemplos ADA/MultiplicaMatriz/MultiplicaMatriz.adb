With Ada.Text_IO; Use Ada.Text_IO;

Procedure MultiplicaMatriz is
	type Integer_Matrix is array (Integer range <>, Integer range <>) of Integer'Base;
	matriz1  : Integer_Matrix(1..3, 1..2);
	matriz2  : Integer_Matrix(1..2, 1..3);
	resultado: Integer_Matrix(1..3, 1..3);

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
			for C in Integer range 1 .. 2 loop
				matriz1(L, C) := Get_Integer;
			end loop;
		end loop;

		for L in Integer range 1 .. 2 loop
			for C in Integer range 1 .. 3 loop
				matriz2(L, C) := Get_Integer;
			end loop;
		end loop;
	end Faz_Leitura;

	procedure Print_Resultado is
	begin
		for L in Integer range 1 .. 3 loop
			for C in Integer range 1 .. 3 loop
				Put(Integer'Image(resultado(L, C)));
				Put(" ");
			end loop;
			Put_Line("");
		end loop;
	end Print_Resultado;

	procedure Inicializa is
	begin
		for I in Integer range 1 .. 3 loop
			for J in Integer range 1 .. 3 loop
				resultado(I, J) := 0;
			end loop;
		end loop;
	end Inicializa;

	procedure Multiplica is
	begin
		for I in Integer range 1 .. 3 loop
			for J in Integer range 1 .. 3 loop
				for K in Integer range 1 .. 2 loop
					resultado(I, J) := resultado(I, J) + matriz1(I, K) * matriz2(K, J);
				end loop;
			end loop;
		end loop;
	end Multiplica;

begin
	Faz_Leitura;
	Inicializa;
	Multiplica;
	Print_Resultado;
end MultiplicaMatriz;