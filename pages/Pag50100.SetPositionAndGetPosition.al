page 50100 SetPositionAndGetPosition
{
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'SetPositionAndGetPosition';
    PageType = Card;

    actions
    {
        area(Processing)
        {
            action(SetPosition)
            {
                Caption = 'Set Position';
                trigger OnAction()
                begin
                    inputString := 'No.=Const(20001)';
                    MyRecordRef.Open(23);
                    Myfieldref := MyRecordRef.Field(1);
                    Myfieldref.SetFilter('10000..20000');
                    if MyRecordRef.FindLast() then
                        message(Txt003, MyRecordRef.RecordId, MyRecordRef.Field(2));
                    MyRecordRef.SetPosition(inputString);
                    message(Txt004, MyRecordRef.RecordId, MyRecordRef.Field(2));
                    inputString := MyRecordRef.GetPosition(true);
                    message('The position is %1', inputString);
                end;
            }
        }
    }
    var
        Cust: Record Customer;
        recordref: RecordRef;
        Myfieldref: FieldRef;
        varPrimaryKey: Text;
        MyRecordRef: RecordRef;
        inputString: Text;
        myfielfref: FieldRef;
        Txt003: Label 'The record No. before the Primary Key was Changed is %1.\\The vendor name before the Primary Key was changed is %2';
        Txt004: Label 'The record No. after the Primary Key was Changed is %1.\\The vendor name after the Primary Key was changed is %2';
}
