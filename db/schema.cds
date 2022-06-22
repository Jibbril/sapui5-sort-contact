namespace my;

entity MyEntity  {
    key ID: Integer;
    SecondEntityCode: String;
    SecondEntity: Association to MySecondEntity on SecondEntity.Code = SecondEntityCode;
}


entity MySecondEntity {
    @Common.Text: Value
    key Code: String;
    Value: String; 
}