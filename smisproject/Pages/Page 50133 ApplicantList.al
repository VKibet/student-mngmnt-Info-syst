/// <summary>
/// Page Applicant List (ID 50133).
/// </summary>
page 50133 "Applicant List"
{
    Caption = 'Applicant List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentApplication;
    CardPageId = "Student Application Card";
    Editable = false;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {            
                field("Application No."; Rec."Application No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application No. field.';
                }
                field(FullName; Rec.FullName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.';
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Age field.';
                }
                field(DateOfBirth; Rec.DateOfBirth)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Birth field.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
            }
        }
    }
}