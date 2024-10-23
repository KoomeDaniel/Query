query 50100 Query00
{
    Caption = 'Query00';
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';

    elements
    {
        dataitem(ItemLedgerEntry; "Item Ledger Entry")
        {
            column(Item_No_; "Item No.")
            {

            }
            column(Quantity; Quantity)
            {
                Method = Sum;
            }
            filter(Posting_Date; "Posting Date")
            { }
        }
    }
}
query 50101 "Item Query"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';
    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {
            }
            column("Description"; "Description")
            {
            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                column(Item_No_; "Item No.") { }
                column(Document_No_; "Document No.")
                { }
                column(Document_Date; "Document Date") { }
                column(Quantity; Quantity)
                { }
            }
        }
    }


}
query 50102 "Item Query- Cross Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';
    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {
            }
            column("Description"; "Description")
            {
            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                //DataItemLink = "Item No." = Item."No.";
                SqlJoinType = CrossJoin;
                column(Item_No_; "Item No.") { }
                column(Document_No_; "Document No.")
                { }
                column(Document_Date; "Document Date") { }
                column(Quantity; Quantity)
                { }
            }
        }
    }


}
query 50103 "Item Query-Inner Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';
    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {
            }
            column("Description"; "Description")
            {
            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = InnerJoin;
                column(Item_No_; "Item No.") { }
                column(Document_No_; "Document No.")
                { }
                column(Document_Date; "Document Date") { }
                column(Quantity; Quantity)
                { }
            }
        }
    }


}
query 50104 "Item Query-Right Outer Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';


    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {
            }
            column("Description"; "Description")
            {
            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = RightOuterJoin;
                column(Item_No_; "Item No.") { }
                column(Document_No_; "Document No.")
                { }
                column(Document_Date; "Document Date") { }
                column(Quantity; Quantity)
                { }
            }
        }
    }


}
query 50105 "Item Query-left Outer Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';
    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {
            }
            column("Description"; "Description")
            {
            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = LeftOuterJoin;
                column(Item_No_; "Item No.") { }
                column(Document_No_; "Document No.")
                { }
                column(Document_Date; "Document Date") { }
                column(Quantity; Quantity)
                { }
            }
        }
    }


}
query 50106 "Item Query-full Outer Join"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';
    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {
            }
            column("Description"; "Description")
            {
            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                SqlJoinType = FullOuterJoin;
                column(Item_No_; "Item No.") { }
                column(Document_No_; "Document No.")
                { }
                column(Document_Date; "Document Date") { }
                column(Quantity; Quantity)
                { }
            }
        }
    }
}

query 50107 "Item Ledger Query"
{
    QueryType = Normal;
    QueryCategory = 'Item List', 'Customer List';
    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {
            }
            column("Description"; "Description")
            {
            }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = Item."No.";
                column(Item_No_; "Item No.") { }
                column(Document_No_; "Document No.")
                { }
                column(Document_Date; "Document Date") { }
                column(Quantity; Quantity)
                { }
                column(Entry_Type; "Entry Type")
                { }
            }
        }
    }


}