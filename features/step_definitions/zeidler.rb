

# Author: Sudha

When /^I click "(.*?)" tab$/ do |tab|
  page.find(:xpath, "//a[@href='/business/']").click
  
end


Then /^I should see "(.*?)"$/ do |text_verify|
  case text_verify
  when 'Business Line'
    page.has_content?('Business Line').should == true
    puts "here"
  when 'Main Navigation'
    #page.has_content?('Main Navigation').should == true
    page.has_content?('Main Navigation').should == true
    puts "here"
  end
end