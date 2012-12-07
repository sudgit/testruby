

# Given /^I am on google Home page$/ do
  # visit ("http://www.google.com")
# end
# 
# Given /^I am on "(.*?)" page$/ do |site|
  # puts "site: " + site
  # case site
  # when 'google'
    # visit ("http://www.google.com")
  # when 'a2z insurance'
    # visit ("http://www.a2zinsuranceservices.net/")
  # when 'Pixo'
    # visit ("http://www.pixonesto.com/aboutus.html")
  # when 'Long Term Care'
     # visit ("http://www.a2zinsuranceservices.net/long-term-care-insurance")
  # when 'Get a Quote'
    # visit ('http://www.a2zinsuranceservices.net/form1.html')
  # end
#   
  # sleep 5
# end

When /^I click gmail$/ do
  page.find(:xpath, "//a[@href='https://mail.google.com/mail/?tab=wm']").click
end

Then /^I see gmail "(.*?)"$/ do |word|
  page.find(:xpath, "//div/div/div/h2").text.should == word  
end

Given /^I am on gmail page$/ do
  visit ("http://www.gmail.com")
end

When /^I enter user name and password$/ do
  # myEmail = page.find(:xpath, "*//input[@id='Email']")
  page.find(:xpath, "//input[@name='Email']").click
  sleep 5
  # myPword = page.find(:xpsth, "*//input[@id='Passwd']")
  fill_in 'Email', :with =>'sudhayes1'
  fill_in 'Passwd', :with =>'pword'
 end

Then /^I click signin button$/ do
 # page.find(:xpath, "//input[@id='signIn']").should have_button('Sing in')
 page.find(:xpath, "//input[@id='signIn']").click
end

When /^I type "(.*?)" in the search field$/ do |keyword|
  # page.find(:xpath, "//input[@id='gbqfq']").click
  fill_in 'gbqfq', :with => keyword
  # '#{keyword}'
end

# When /^I click "(.*?)" button$/ do |arg1|
  # page.find(:xpath, "//span[@id='gbqfsa']").click
# end

When /^I hit Google Search button$/ do
  page.find(:xpath, "//span[@class='gbqfi']").click
end

Then /^I click first link from the search results$/ do
  puts page.find(:xpath, "//li/div/h3/a").text
  page.find(:xpath, "//li/div/h3/a").click
end