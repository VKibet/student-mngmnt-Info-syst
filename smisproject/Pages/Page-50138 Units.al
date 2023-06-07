/// <summary>
/// Page Units (ID 50138).
/// </summary>
page 50138 Units
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Units;

    layout
    {
        area(Content)
        {
            group(Unit)
            {

                field(UnitCode; Rec.UnitCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the UnitCode field.';
                }
                field(Units; Rec.Units)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Units field.';
                }
                field(course; Rec.course)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the course field.';
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