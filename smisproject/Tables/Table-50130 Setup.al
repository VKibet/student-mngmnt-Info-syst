/// <summary>
/// Table smis setup (ID 50130).
/// </summary>
table 50130 "Student Management Setup"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary key"; code[10])
        {
            DataClassification = CustomerContent;

        }
        field(2; "Application Nos."; Code[20])
        {
            Caption = 'Application No.';
            Dataclassification = CustomerContent;
            Tablerelation = "No. Series";

        }
        field(3; "MinAge"; Integer)
        {

        }
        field(4; "MaxAge"; Integer)
        {
            Caption = 'Maximum Age';
        }
        field(5; Today; DateTime)
        {

        }
        field(6; SchoolCode; code[20])
        {
            Caption = 'School Code.';
            Dataclassification = CustomerContent;
            Tablerelation = "No. Series";
        }
        field(7; DeparmentsCode; code[20])
        {
            Caption = 'Departments Code.';
            Dataclassification = CustomerContent;
            Tablerelation = "No. Series";
        }
        field(8; CourseCode; code[20])
        {
            Caption = 'Course Code.';
            Dataclassification = CustomerContent;
            Tablerelation = "No. Series";
        }


    }

    keys
    {
        key(PK; "Primary key")
        {
            Clustered = true;
        }
    }

}