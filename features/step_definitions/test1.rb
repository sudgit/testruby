

Given /^I am on Home page$/ do
  visit ("http://www.macys.com")
  sleep 3
  puts "this is step 1"
end

When /^I click login$/ do
  page.find(:xpath, "//a[@class='globalMiniCartSignIn']").click
  sleep 3
  puts "this is step 2"
end

Then /^I see submit button$/ do
  page.find(:xpath, "//label[@for='password']").text.should == "Password:"
end

