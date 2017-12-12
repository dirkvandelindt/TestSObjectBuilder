public interface ITestSObjectBuilder {

    // Getter methods
    Schema.SObjectType getSObjectType();
    Map<SObjectField, Object> getDefaultFieldsAndValues();

    // Setter methods
    ITestSObjectBuilder set(Schema.SObjectField field, Object value);
    ITestSObjectBuilder set(Map<Schema.SObjectField, Object> fieldsAndValues);

    // Builder methods
    SObject build();
    SObject build(Boolean insertRecord);
    List<SObject> build(Integer numberOfRecordsToCreate);
    List<SObject> build(Integer numberOfRecordsToCreate, Boolean insertRecords);

}