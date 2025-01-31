```ada
procedure Example_Solution is
   subtype My_Sub_Type is Integer range 1..10;
   X : My_Sub_Type := 1;
begin
   X := X + 1;
   if X > My_Sub_Type'Last then
      X := My_Sub_Type'Last; -- Handle out of range by clamping
      Put_Line("Warning: X is clamped to maximum value");
   end if;
   Put_Line("X = " & Integer'Image(X));
end Example_Solution;
```