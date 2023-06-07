/// <summary>
/// Table Departments (ID 50133).
/// </summary>
table 50134 Departments
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; DepartmentCode; code[20])
        {
            Caption = 'Department Code';
            DataClassification = CustomerContent;

        }
        field(2; Departments; text[100])
        {
            caption = 'Deparments';
            DataClassification = CustomerContent;

        }
        field(3; School; Text[100])
        {
            Caption = 'School';
            TableRelation = School;

        }

    }

    keys
    {
        key(PK; DepartmentCode)
        {
            Clustered = true;
        }
    }
}