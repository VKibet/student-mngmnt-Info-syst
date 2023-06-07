/// <summary>
/// Page Schools (ID 50135).
/// </summary>
page 50135 Schools
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = School;

    layout
    {
        area(Content)
        {
            group(Schools)
            {

                field(SchoolCode; Rec.SchoolCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SchoolCode field.';
                }
                field(SchoolName; Rec.SchoolName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SchoolName field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}