with Ada.Text_IO;

procedure Hello is
    use Ada.Text_IO;
    Input: Integer; -- user input
begin
    
      Put_line ("Please enter 1 for Hello or 2 for Goodbye:");
           Get(Input);


       if Input = 1  then -- Input for Hello
           Put_Line ("Hello Ada!");
        elsiF Input = 2 then
           Put_line ("Goodbye Ada!"); -- input for goodbye
        else
           Put_line ("Error, invalid input please input 1 or 2.") -- error statement          
        end if;
    


end Hello;
