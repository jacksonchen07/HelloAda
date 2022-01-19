with Ada.Text_IO;

procedure Hello is
    use Ada.Text_IO;
begin

    for I in 1..6 loop

        if 2 mod I = 0 then -- the first 3rd and 5th loop says hello and the 2nd 4ht and 6th loop says goodbye
            Put_line ("Goodbye Ada!");
    
         else
             Put_Line ("Hello Ada!");
         end if;
    
    end loop;    
    
end Hello;
