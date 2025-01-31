```ada
procedure Example is
   subtype My_Sub_Type is Integer range 1..10;
   X : My_Sub_Type := 1;
begin
   X := X + 1;
   if X > 10 then
      -- This will never be reached because Ada does not allow out-of-range assignments
      Put_Line("Error: X is out of range");
   end if;
   Put_Line("X = " & Integer'Image(X));
end Example;
```