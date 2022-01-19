with Ada.Text_IO;
with Ada.Strings.Unbounded;
with Ada.Text_IO.Unbounded_IO;

procedure Hello is
    use Ada.Text_IO;
    use Ada.Strings.Unbounded;
    use Ada.Text_IO.Unbounded_IO;
    Name : Unbounded_String;
begin
    -- Using full package name because it would be ambigous with all the String packages
    Ada.Text_IO.Put ("What is your name? ");
    Name := To_Unbounded_String (Get_Line);
    Put_Line ("Hi " & To_String (Name) & "!");

    for I in 1 .. 6 loop

        if 2 mod I = 0
        then -- the first 3rd and 5th loop says hello and the 2nd 4ht and 6th loop says goodbye
            Put_Line ("Goodbye Ada!");

        else
            Put_Line ("Hello Ada!");
        end if;

    end loop;

    -- Refer to line 11
    Ada.Text_IO.Put ("Bye " & To_String (Name) & "!");
end Hello;
