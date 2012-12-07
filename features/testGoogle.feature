Feature: testing Gmail and google search

@scene1
Scenario: To visit gmail page
Given I am on "google" page
When I click gmail
Then I see gmail "Sign in"

@scene2
Scenario: Login gmail
Given I am on gmail page
When I enter user name and password	
Then I click signin button

@scene3
Scenario: search on Google 
Given I am on google Home page
# When I type "QA jobs" in the search field
When I type "fc barcilona" in the search field
	# And I click "Google Search" button
	And I hit Google Search button
Then I click first link from the search results


