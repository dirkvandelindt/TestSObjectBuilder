# Test SObject Builder for Salesforce Apex
<a target="_blank" href="https://githubsfdeploy.herokuapp.com">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png">
</a>

## Overview
This is an freestanding version of the [Nebula framework's](https://github.com/jongpie/NebulaFramework/) test SObject builder, used to generate test records for unit tests - it has been updated to remove any dependencies on the rest of the Nebula framework.

## Implementation
TestSObjectBuilder.cls is the primary focus of this project - to leverage it, create a class that extends TestSObjectBuilder.Base. 2 sample classes have been included in the repo
* TestAccountBuilder.cls - demonstrates the most basic implementation of TestSObjectBuilder.Base
* TestContactBuilder.cls - demonstrates how to make additional fields, like contact.AccountId, required to be populated by adding a new constructor with an account ID parameter