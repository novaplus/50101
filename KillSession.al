pageextension 50102 KillSession extends "Session List"
{
    layout
    {
        // Add changes to page layout here
    }
    
    actions
    {
        // Add changes to page actions here
        addafter(Session)
        {
            action("Kill Session")
            {
                Caption = 'Kill Session';
                Image = Delete;

                trigger OnAction();
                var
                    TEXT5000 : Label 'Kill session?';
                begin
                    if CONFIRM(TEXT5000,false) then
                    STOPSESSION("Session ID");
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}
