/// <summary>
/// Table Units (ID 50135).
/// </summary>
table 50135 Units
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; UnitCode; code[20])
        {
            DataClassification = CustomerContent;

        }
        field(2; Units; Text[100])
        {

        }
        field(3; course; Text[100])
        {
            TableRelation = Courses;

        }
    }

    keys
    {
        key(PK; UnitCode)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}