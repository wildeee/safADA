With Ada.Text_IO; Use Ada.Text_IO;

Procedure BuscaBinaria is
	numeros: array(1..15) of Integer;
	target : Integer;
	L : Integer;
	R : Integer;
	mid : Integer;
	found: Integer;

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
		for I in Integer range 1 .. 15 loop
			numeros(I) := Get_Integer;
		end loop;
	end Faz_Leitura;

	function binSearch return Integer is
	begin
		mid := (L + R) / 2;
		if numeros(mid) < target then
			L := mid + 1;
			return binSearch;
		end if;
		if numeros(mid) > target then
			R := mid - 1;
			return binSearch;
		end if;
		return mid;
	end binSearch;

begin
	Faz_Leitura;
	target := Get_Integer;
	L := 1;
	R := 15;
	found := binSearch;
	Put_Line(Integer'Image(found));
end BuscaBinaria;