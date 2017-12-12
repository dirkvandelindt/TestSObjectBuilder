@isTest
public class TestLeadBuilder {

    public class Base extends TestSObjectBuilder.Base {

        public override Schema.SObjectType getSObjectType() {
            return Schema.Lead.SObjectType;
        }

        public override Map<SObjectField, Object> getDefaultFieldsAndValues() {
            return new Map<SObjectField, Object>{
                Schema.Lead.LastName  => 'Gillespie'
            };
        }

    }

}