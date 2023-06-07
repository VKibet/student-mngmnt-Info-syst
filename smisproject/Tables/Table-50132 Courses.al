/// <summary>
/// Table Courses (ID 50132).
/// </summary>
table 50132 Courses
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; CourseCode; code[20])
        {
            DataClassification = CustomerContent;

        }
        field(2; CourseName; Text[100])
        {

        }

        field(4; Department; Text[100])
        {
            Caption = 'department';
            TableRelation = Departments;

        }
    }

    keys
    {
        key(PK; CourseCode)
        {
            Clustered = true;
        }
    }

    // var
    //     myInt: Integer;

    // trigger OnInsert()
    // begin

    // end;

    // trigger OnModify()
    // begin

    // end;

    // trigger OnDelete()
    // begin

    // end;

    // trigger OnRename()
    // begin

    // end;

}