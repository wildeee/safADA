With Ada.Text_IO; Use Ada.Text_IO;

Procedure BubbleSort is
	numeros: array(1..15) of Integer;
	I : Integer;
	buffer: Integer;

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
	for downStep in Integer range 1 .. 15 loop
		I := 15 - downStep;
		for J in Integer range 1 .. I loop
			if numeros(J) > numeros(J + 1) then
				buffer := numeros(J);
				numeros(J) := numeros(J + 1);
				numeros(J + 1) := buffer;
			end if;
		end loop;
	end loop;

	for Index in Integer range 1 .. 15 loop
		Put_Line(Integer'Image(numeros(Index)));
	end loop;
end BubbleSort;