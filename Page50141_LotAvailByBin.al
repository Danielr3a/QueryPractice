page 50149 "Lot Avail. by Bin"
{
    PageType = List;
    SourceTable = "Warehouse Entries";
    SourceTableTemporary = true;
    // ApplicationArea = All;
    UsageCategory = Lists;
    QueryCategory = 'Lot Avail. by Bin';


    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Item No."; Rec."Item No.") { ApplicationArea = All; }
                field("Location Code"; Rec."Location Code") { ApplicationArea = All; }
                field("Bin Code"; Rec."Bin Code") { ApplicationArea = All; }
                field("Serial No."; Rec."Serial No.") { ApplicationArea = All; }
                field(Quantity; Rec.Quantity) { ApplicationArea = All; }
            }
        }
    }
    trigger OnOpenPage()
    var
        LotAvail: Query "Lot Avail. by Bin";
    begin
        LotAvail.Open();
        while LotAvail.Read() do begin
            rec.Init();
            rec."Item No." := rec."Item No.";
            rec."Location Code" := rec."Location Code";
            rec."Bin Code" := rec."Bin Code";
            rec.Quantity := rec.Quantity;
            rec.Insert();

        end;
    end;
}