/// <summary>
/// Page Course (ID 50137).
/// </summary>
page 50137 Course
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Courses;

    layout
    {
        area(Content)
        {
            group(Course)
            {

                field(CourseCode; Rec.CourseCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CourseCode field.';
                }
                field(CourseName; Rec.CourseName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CourseName field.';
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the department field.';
                }
            }
        }
    }

}