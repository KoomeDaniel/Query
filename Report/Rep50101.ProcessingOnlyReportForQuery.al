report 50101 "Processing only for Query"
{
    ApplicationArea = All;
    Caption = 'Processing only for query';
    UsageCategory = ReportsAndAnalysis;
    ProcessingOnly = true;

    trigger OnPreReport()

    begin
        ItemLedgQuery.SetFilter(ItemLedgQuery.Entry_Type, '<>%1', itemLedgerEntry."Entry Type"::" ");

        ItemLedgQuery.Open();
        while ItemLedgQuery.Read() do begin
            Message('Item No. %1, Quantity %2', ItemLedgQuery.Item_No_, ItemLedgQuery.Quantity);
        end;
        ItemLedgQuery.Close();
    end;

    var
        item: Record Item;
        itemLedgerEntry: Record "Item Ledger Entry";
        ItemLedgQuery: Query "Item Ledger Query";
}

