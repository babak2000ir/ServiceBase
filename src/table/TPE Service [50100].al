table 50100 "TPE Service"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Name; text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "App Name"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "App Id"; Guid)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Name)
        {
            Clustered = true;
        }
    }
}