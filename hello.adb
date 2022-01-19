with Ada.Text_IO;
with Ada.Strings.Unbounded;
with Ada.Text_IO.Unbounded_IO;

procedure Hello is
    use Ada.Text_IO;
    use Ada.Strings.Unbounded;
    use Ada.Text_IO.Unbounded_IO;
    Name : Unbounded_String;
    Input: integer; -- Integer for I/O statement    
begin
    -- Using full package name because it would be ambigous with all the String packages
    Ada.Text_IO.Put ("What is your name? ");
    Name := To_Unbounded_String (Get_Line);
    Put_Line ("Hi " & To_String (Name) & "Please input 1 for Hello or 2 for Goodbye: "); -- Modified this for I/O statement (BK)
    get (Input);
    
        if Input = 1 then -- Input for hello statement (BK) 
           Put_Line ("Hello Ada!"); 
            
        elseif Input = 2 then -- Input for goodbye statement (BK)
           Put_Line ("Goodbye Ada!"); 
        else
           Put_Line ("Invalid input!"); -- Error statement (BK)
        end if;

    -- Refer to line 11
    Ada.Text_IO.Put ("Bye " & To_String (Name) & "!");
end Hello;
