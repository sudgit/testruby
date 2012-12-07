Feature: contact us

@scene1
Scenario: visiting contact us page
Given I am on "Pixo" page
When I click Contact Us 
Then I should see "ccntact"

@scene2
Scenario: filling contact us form
Given I am on Pixo Home page
When I click Contact Us
	And I fill contact us form
	  |myname|email address    |phone number|comments|
	  |Sud   |myemail@email.com|1234567890  | good|
	And I click submit
Then I get "The following form submission was sent."
	  
	
