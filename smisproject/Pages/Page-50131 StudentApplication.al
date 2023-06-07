/// <summary>
/// Page Student Application Card (ID 50131).
/// </summary>
page 50131 "Student Application Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentApplication;
    PromotedActionCategories = 'New,Create,Process,Reports,Approvals';

    layout
    {
        area(Content)
        {
            group(StudentInfo)

            {
                Caption = 'Student Bio Data';
                field("Application No."; Rec."Application No.")
                {
                    ApplicationArea = All;
                    ToolTip = '';
                    Editable = false;
                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then CurrPage.Update();
                    end;


                }
                field(FirstName; Rec.FirstName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.';
                    ShowMandatory = True;
                }

                field(MiddleName; Rec.MiddleName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Middle Name field.';
                }
                field(Surname; Rec.Surname)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Surname field.';
                }
                field("Gender"; Rec.Gender)
                {
                    Caption = 'Gender';
                    ApplicationArea = All;
                }


                field("Date of Birth"; Rec.DateOfBirth)
                {
                    Caption = 'Date of Birth';
                    ApplicationArea = All;
                }


            }
            group(Address)
            {
                Caption = 'Address & Contacts';
                group("PersonalInfo")
                {
                    caption = 'Personal Info';
                    field("Country/Region Code"; Rec."Country/Region Code")

                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Country/Region field';

                    }

                    field(Location; Rec.Location)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Location field.';
                    }
                    field(PhoneNumber; Rec.PhoneNumber)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Phone Number field.';
                    }
                    field(Email; Rec.Email)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Email Address field.';
                    }
                }
                group("NextOfKinDetails")
                {
                    Caption = 'Next of Kin Details';
                    field(NextofKinName; Rec.NextofKinName)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Name field.';
                    }
                    field(Relationship; Rec.Relationship)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Relationship field.';
                    }
                    field("PhoneNo."; Rec."PhoneNo.")
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Phone No. field.';
                    }
                    field("APhoneNo."; Rec."APhoneNo.")
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Alternative Phone No. field.';
                    }

                }
            }
            group(resultsandschool)
            {
                Caption = 'Application Details';
                field("Course"; Rec.Course)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course field.';
                }

                field(School; Rec.School)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the School field.';
                }

                field(Departments; Rec.Departments)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Departments field.';
                }
            }


        }
    }
    actions
    {
        area(processing)
        {

            action(Create)
            {
                ApplicationArea = All;
                Caption = 'Send Approval Request';
                Promoted = true;
                PromotedCategory = Category5;
                trigger OnAction()
                var
                    myInt: Integer;
                begin

                end;
            }
            action(CancelApp)
            {
                ApplicationArea = All;
                Caption = 'Cancel Approval Request';
                Promoted = true;
                PromotedCategory = Category5;
                trigger OnAction()
                var
                    myInt: Integer;
                begin

                end;
            }
        }
    }
}