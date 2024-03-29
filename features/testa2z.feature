Feature: testing a2z insurance Long term care medicare

@scene1
Scenario: visiting a2z home page
Given I am on "a2z insurance" page
When I click "Long Term care"
Then I should see link for "Long Term Care Insurance"


@scene2
Scenario: to check for the availability of the "Get a Quote" 
Given I am on "Long Term Care" page
Then I push "Get a Quote" 

@scene3
Scenario: filling the "Get a Quote" form
Given I am on "Get a Quote" page
When I select checkbox for home
	And I enter customer details      
		|customer_name| customer_phone      | best_time_to_call| address                          | email            |message   |
		|sud 		  | 1234567890 			| evening          | 123 ABC St, San Rafael, CA 94949 | mymail1@gmail.com| Thank you|
	Then I see home checkbox selected

@scene4
Scenario: to check the images on travel insurance page
Given I am on "a2z insurance" page
When I click "travel-planning-travel-insurance"
Then I see the text 'Overseas Health Insurance Coverage'

