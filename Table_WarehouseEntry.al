table 50149 "Warehouse Entries"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Item No."; Code[20]) { DataClassification = ToBeClassified; }
        field(10; "Location Code"; Code[10]) { DataClassification = ToBeClassified; }
        field(20; "Bin Code"; Code[20]) { DataClassification = ToBeClassified; }
        field(30; "Serial No."; Code[50]) { DataClassification = ToBeClassified; }
        field(40; "Quantity"; Decimal) { DataClassification = ToBeClassified; }
    }

    // keys
    // {
    //     key(Key1; MyField)
    //     {
    //         Clustered = true;
    //     }
    // }
}