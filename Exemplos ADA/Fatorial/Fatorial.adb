With Ada.Text_IO; Use Ada.Text_IO;

Procedure Fatorial is
	numero: Integer;
	fatorial: Integer := 1;

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

begin
	-- Put("Enter S: ");
	numero := Get_Integer;
	for I in Integer range 1 .. numero loop
		fatorial := fatorial * I;
	end loop;
	Put_Line(Integer'Image(fatorial));
end Fatorial;
