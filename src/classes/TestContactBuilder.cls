@isTest
public class TestContactBuilder {

    public class Base extends TestSObjectBuilder.Base {

        public Base(Id accountId) {
            super.set(Schema.Contact.AccountId, accountId);
        }

        public override Schema.SObjectType getSObjectType() {
            return Schema.Contact.SObjectType;
        }

        public override Map<SObjectField, Object> getDefaultFieldsAndValues() {
            return new Map<SObjectField, Object>{
                Schema.Contact.FirstName => 'Jonathan'
                Schema.Contact.LastName  => 'Gillespie'
            };
        }

    }

}