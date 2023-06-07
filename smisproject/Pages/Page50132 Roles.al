/// <summary>
/// Page Students (ID 50132).
/// </summary>
page 50132 Students
{
    PageType = RoleCenter;
    Caption = 'Student Management';

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Headline RC Administrator")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group(StudentApp)
            {
                action(ActionBarAction)
                {
                    Caption = 'Student Application Card';
                    RunObject = Page "Student Application Card";
                    Image = Customer;
                    ApplicationArea = Basic, Suite;
                }


            }
            group(Adminstration)
            {
                Caption = 'adminstration';
                group(Admin)
                {
                    action(setup)
                    {
                        RunObject = Page StudentApplicationList;
                        Image = Setup;
                        ApplicationArea = Basic, Suite;
                    }
                }
                group(courses)
                {
                    action(Course)
                    {
                        RunObject = page Course;
                        ApplicationArea = all;
                    }
                    action(Departments)
                    {
                        RunObject = Page Departments;
                        ApplicationArea = all;
                    }
                }
            }
            group(Applicants)
            {
                action(ApplicantList)
                {
                    RunObject = page "Applicant List";
                    ApplicationArea = Basic, Suite;

                }
            }
        }
    }

}
profile Myprofile
{
    ProfileDescription = 'Student Portal';
    RoleCenter = Students;
    Caption = 'Student Portal';

}