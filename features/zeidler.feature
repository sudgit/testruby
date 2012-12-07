# Author: Sudha Sreenivas
# Date created: 11/28/2012
# Last edited:
# Last edited by:
# Date signed:


Feature: Testing the functionality of Al Zeidlers insurance business page
	As an insurance customer I should be able to get price quote for the business insurance

	Acceptance Criteria: 
		#Example : mingle url

Background: 
	Given I am on "Al Zeidlers home" page

@scene1
Scenario: To test the business page
When I click "Business" tab
Then I should see "Business Line"
	And I should see "Main Navigation"
	
@wip	
@scene2
Scenario:

