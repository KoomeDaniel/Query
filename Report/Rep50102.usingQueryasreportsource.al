report 50102 "using Query as report source"
{
    Caption = 'using Query as report source';
    dataset
    {
        dataitem(Namba; "Integer")
        {
            column(ItemNo;ItemQueryInnerJoin.Item_No_)
            {}
            column(Description;ItemQueryInnerJoin."Description")
            {}
            trigger OnAfterGetRecord()
            begin
                if not ItemQueryInnerJoin.Read() then
                    CurrReport.Break();
            end;
            trigger OnPreDataItem()
            
            begin
                Namba.SetFilter(Number,'1..10');//can also use Namba.SetRange(Number,1,10);
                ItemQueryInnerJoin.Open()
            end;
        }
    }
    var
        ItemQueryInnerJoin: Query "Item Query-Inner Join";
}

