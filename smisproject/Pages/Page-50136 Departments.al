/// <summary>
/// Page Departments (ID 50136).
/// </summary>
page 50136 Departments
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Departments;

    layout
    {
        area(Content)
        {
            group("Department")
            {
                Caption = 'Department';



            }
            field(DepartmentCode; Rec.DepartmentCode)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Department Code field.';
            }
            field(Departments; Rec.Departments)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Deparments field.';
            }
            field(School; Rec.School)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the School field.';
            }
        }
    }

}