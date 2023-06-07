/// <summary>
/// Table StudentApplication (ID 50131).
/// </summary>
table 50131 StudentApplication
{
    Caption = 'Student Application';
    DataClassification = CustomerContent;
    DrillDownPageId = "Applicant List";
    LookUpPageId = "Applicant List";

    fields
    {
        field(1; "Application No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Application No.';
        }

        field(2; FirstName; Text[50])
        {
            NotBlank = true;
            Caption = 'First Name';
        }

        field(3; MiddleName; Text[50])
        {
            Caption = 'Middle Name';
        }

        field(4; Surname; Text[50])
        {
            Caption = 'Surname';
        }

        field(5; FullName; Text[150])
        {
            Caption = 'Full Name';
            Editable = false;
        }

        field(6; Gender; Option)
        {
            OptionMembers = " ","Male","Female";
            caption = 'Gender';
            OptionCaption = 'Male,Female';

        }

        field(7; DateOfBirth; Date)
        {
            Caption = 'Date of Birth';
            NotBlank = true;
            trigger OnValidate()

            begin

                // Age1 := Today - DateOfBirth;
                Age := Date2DMY(WorkDate, 3) - Date2DMY("DateOfBirth", 3);
            end;
        }

        field(8; Age; Integer)
        {
            Caption = 'Age';
            Editable = false;
        }

        field(9; "No. Series"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(10; "Course"; Text[50])
        {
            Caption = 'Course';
            DataClassification = CustomerContent;
        }
        field(11; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(12; School; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = School;
        }
        field(13; Departments; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Departments;
        }
        field(14; Courses; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = Courses;
        }
        field(44; Email; Text[50])
        {
            Caption = 'Email Address';
            DataClassification = CustomerContent;
        }
        field(45; PhoneNumber; code[50])
        {
            Caption = 'Phone Number';
            DataClassification = CustomerContent;

        }
        field(46; Location; Text[100])
        {
            Caption = 'Location';
            DataClassification = CustomerContent;
            TableRelation = Location;
        }
        field(50; NextofKinName; text[100])
        {
            caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(51; Relationship; Text[20])
        {
            Caption = 'Relationship';
        }
        field(52; "PhoneNo."; Text[50])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
        }
        field(53; "APhoneNo."; Text[50])
        {
            Caption = 'Alternative Phone No.';
            DataClassification = CustomerContent;
        }


    }

    keys
    {
        key(PK; "Application No.")
        {
            Clustered = true;
        }
    }

    var
        StudentManagementSetup: Record "Student Management Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;

    trigger OnModify()
    var
        TempFullName: Text[150];
    begin
        if "Application No." <> xRec."Application No." then begin
            StudentManagementSetup.Get();
            StudentManagementSetup.TestField("Application Nos.");
            NoSeriesManagement.TestManual(StudentManagementSetup."Application Nos.");
        end;

        TempFullName := FORMAT(FirstName) + ' ' + FORMAT(MiddleName) + ' ' + FORMAT(Surname);
        FullName := STRSUBSTNO('%1', TempFullName);
    end;

    /// <summary>
    /// AssistEdit.
    /// </summary>
    /// <param name="ApplicationNo">Record "StudentApplication".</param>
    /// <returns>Return value of type Boolean.</returns>
    procedure AssistEdit(ApplicationNo: Record "StudentApplication"): Boolean
    var
        StudAppRec: Record "StudentApplication";
    begin
        ApplicationNo := Rec;
        StudentManagementSetup.Get();
        StudentManagementSetup.TestField(StudentManagementSetup."Application Nos.");
        if NoSeriesManagement.SelectSeries(StudentManagementSetup."Application Nos.", '', "No. Series") then begin
            NoSeriesManagement.SetSeries("Application No.");
            Rec := ApplicationNo;
            exit(true);
        end;
    end;

    trigger OnInsert()
    begin
        if "Application No." = '' then begin
            StudentManagementSetup.Get();
            StudentManagementSetup.TestField("Application Nos.");
            NoSeriesManagement.InitSeries(StudentManagementSetup."Application Nos.", StudentManagementSetup."Application Nos.", WorkDate(), "Application No.", StudentManagementSetup."Application Nos.");
        end;
    end;
}
