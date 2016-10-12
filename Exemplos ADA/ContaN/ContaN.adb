With Ada.Text_IO; Use Ada.Text_IO;

Procedure ContaN is
	numeros     : array(1..15) of Integer;
	search      : Integer;
	encontrados : Integer := 0;

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

begin
	Faz_Leitura;
	search := Get_Integer;
	for I in Integer range 1 .. 15 loop
		if search = numeros(I) then
			encontrados := encontrados + 1;
		end if;
	end loop;
	Put_Line(Integer'Image(encontrados));
end ContaN;