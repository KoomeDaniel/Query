report 50100 "Processing only for Records"
{
    ApplicationArea = All;
    Caption = 'Processing only for Records"';
    UsageCategory = ReportsAndAnalysis;
    ProcessingOnly = true;

    trigger OnPreReport()

    begin
        if item.FindSet() then begin
            repeat
                itemLedgerEntry.Reset();
                itemLedgerEntry.SetRange("Item No.", item."No.");
                itemLedgerEntry.SetRange(itemLedgerEntry."Entry Type", itemLedgerEntry."Entry Type"::Purchase);
                if itemLedgerEntry.FindSet() then begin
                    repeat
                        Message('Item No. %1, Quantity %2', itemLedgerEntry."Item No.", itemLedgerEntry.Quantity);
                    until itemLedgerEntry.Next = 0;
                end;
            until item.Next = 0;
        end;
    end;

    var
        item: Record Item;
        itemLedgerEntry: Record "Item Ledger Entry";
        ItemLedgQuery: Query "Item Ledger Query";
}

