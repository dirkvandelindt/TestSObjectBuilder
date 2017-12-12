@isTest
public class TestAccountBuilder {

    public class Base extends TestSObjectBuilder.Base {

        public override Schema.SObjectType getSObjectType() {
            return Schema.Account.SObjectType;
        }

        public override Map<SObjectField, Object> getDefaultFieldsAndValues() {
            return new Map<SObjectField, Object>{
                Schema.Account.Name  => 'My Test Company'
            };
        }

    }

}