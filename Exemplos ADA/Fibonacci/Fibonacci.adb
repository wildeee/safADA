With Ada.Text_IO; Use Ada.Text_IO;

Procedure Fibonacci is
	numero: Integer;
	resultado: Integer;

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

	--Fibonacci!
	function Fib(num: in Integer) return Integer is
	begin
		if num = 2 then
			return 1;
		end if;
		if num = 1 then
			return 1;
		end if;
		return Fib(num - 1) + Fib(num - 2);
	end Fib;

begin
	numero := Get_Integer;
	resultado := Fib(numero);
	Put_Line(Integer'Image(resultado));

end Fibonacci;