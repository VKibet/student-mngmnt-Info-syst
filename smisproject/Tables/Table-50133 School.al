/// <summary>
/// Table School (ID 50133).
/// </summary>
table 50133 School
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; SchoolCode; code[20])
        {
            DataClassification = CustomerContent;

        }
        field(2; SchoolName; Text[100])
        {

        }
    }

    keys
    {
        key(Pk; SchoolCode)
        {
            Clustered = true;
        }
    }


}