/*************************************************************************************************
* This file is part of the Nebula Framework project, released under the MIT License.             *
* See LICENSE file or go to https://github.com/jongpie/NebulaFramework for full license details. *
*************************************************************************************************/
@isTest
public class TestSObjectBuilder  {

    public abstract class Base implements ITestSObjectBuilder {

        private Map<Schema.SObjectField, Object> fieldValueMap;

        public Base() {
            this.fieldValueMap = this.getDefaultFieldsAndValues();
        }

        public abstract Schema.SObjectType getSObjectType();

        // The minimum fields needed to insert a test record
        public abstract Map<SObjectField, Object> getDefaultFieldsAndValues();

        public ITestSObjectBuilder set(Schema.SObjectField field, Object value) {
            return this.set(new Map<Schema.SObjectField, Object>{field => value});
        }

        public ITestSObjectBuilder set(Map<Schema.SObjectField, Object> fieldsAndValues) {
            this.fieldValueMap.putAll(fieldsAndValues);
            return this;
        }

        public SObject build() {
            return this.build(false);
        }

        public SObject build(Boolean insertRecord) {
            return this.build(1, insertRecord)[0];
        }

        public List<SObject> build(Integer numberOfRecordsToCreate) {
            return this.build(numberOfRecordsToCreate, false);
        }

        public List<SObject> build(Integer numberOfRecordsToCreate, Boolean insertRecords) {
            List<SObject> records = new List<SObject>();
            for(Integer i = 0; i < numberOfRecordsToCreate; i++) {
                SObject record = this.getSObjectType().newSObject();

                for(Schema.SObjectField field : this.fieldValueMap.keySet()) {
                    Object value = this.fieldValueMap.get(field);
                    record.put(field.getDescribe().getName(), value);
                }

                records.add(record);
            }

            if(insertRecords) insert records;

            return records;
        }

    }

}