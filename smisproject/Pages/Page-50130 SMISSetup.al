/// <summary>
/// Page StudentApplicationList (ID 50130).
/// </summary>
page 50130 "StudentApplicationList"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Student Management Setup";
    Caption = 'Student Application List';
    DeleteAllowed = false;
    InsertAllowed = false;


    layout
    {
        area(content)
        {
            group(Applicant)
            {

                field("Application Nos."; Rec."Application Nos.")
                {
                    Caption = 'Application No.';
                    ApplicationArea = All;
                }
                field(MinAge; Rec.MinAge)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the MinAge field.';
                }
                field(MaxAge; Rec.MaxAge)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Maximum Age field.';
                }
                field(CourseCode; Rec.CourseCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course Code. field.';
                }
                field(SchoolCode; Rec.SchoolCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the School Code. field.';
                }
                field(DeparmentsCode; Rec.DeparmentsCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Departments Code. field.';
                }

            }
            // group(Numbering)
            // {
            //     Caption = 'Numbering';
            //     field("Applicatio Nos."; Rec."Application No.")
            //     {
            //         ApplicationArea = All;
            //         ToolTip = 'Specifies the value of the Bonus Nos. field.';
            //     }
            // }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end
    end;

}
