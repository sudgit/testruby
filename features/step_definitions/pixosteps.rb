

# Given /^I am on Pixo Home page$/ do
  # visit ('http://www.pixonesto.com/aboutus.html')
# end

# When /^I click Contact Us$/ do
  # page.find(:xpath, "//a[@href='contactus.html']").click
# end
# 
# Then /^I should see "(.*?)"$/ do |word|
  # puts word
  # puts page.find(:xpath, "//div[@id='e1']/span/span").text
#  
#   
# 
# end
# 
# When /^I fill contact us form$/ do |table|
   # table.hashes.each do |field|
     # field_1 = field['myname']
     # field_2 = field['email address']
     # field_3 = field['phone number']
     # field_4 = field['comments']
     # puts field_1
     # puts field_2
   # fill_in "name", :with => field_1
   # fill_in "email", :with => field_2
   # fill_in "phone", :with => field_3
   # fill_in "comments", :with => field_4 
   # end
#    
   # # fill_in "name", :with => "sud"
   # # fill_in "email", :with => "email@email.com"
   # # fill_in "phone", :with => "1234567890"
   # # fill_in "comments", :with => "very good"
   # # # page.find(:xpath, "//input[@name='name']")
#    
   # sleep 5
# end
# 
# When /^I click submit$/ do
  # page.find(:xpath, "//input[@type='submit']").click
  # puts "hello 1"
# end
# 
# Then /^I get "(.*?)"$/ do |message|
 # # page.find(:xpath, "//html/body").text.include?(message).should==true
 # # puts page.find(:xpath, "//html/body").text
#  
# end