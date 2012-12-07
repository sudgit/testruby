


Given /^I am on "(.*?)" page$/ do |site|
  puts "site: " + site
  case site
  when 'a2z insurance'
    visit ("http://www.a2zinsuranceservices.net/")
    when 'Long Term Care'
     visit ("http://www.a2zinsuranceservices.net/long-term-care-insurance")
  when 'Get a Quote'
    visit ('http://www.a2zinsuranceservices.net/form1.html')
  end
end

When /^I click "(.*?)"$/ do |button| 
  case button
  when 'home-auto-renters-condo-flood-earthquake-insurance'  
    page.find(:xpath, "//a[@href='/home-auto-renters-condo-flood-earthquake-insurance']").click
  when 'life-medical-dental-vision-insurance'
    page.find(:xpath, "//a[@href='/life-medical-dental-vision-insurance']").click
  when  'business-insurance-disability-income'
    page.find(:xpath, "//a[@href='/business-insurance-disability-income']").click
  when 'travel-planning-travel-insurance'
    page.find(:xpath, "//a[@href='/travel-planning-travel-insurance']").click
  when 'prepaid-legal-identity-theft-insurance'
    page.find(:xpath, "//a[@href='/prepaid-legal-identity-theft-insurance']").click 
  when 'Long Term care'
    page.find(:xpath, "//a[@href='/long-term-care-insurance-medicare']").click 
  end
end

Then /^I should see link for "(.*?)"$/ do |typeOfInsurance|
   page.find(:xpath, "//a[@href='/long-term-care-insurance']").click  
end

Then /^I push "(.*?)"$/ do |quote|
   page.find(:xpath, "//a[@href='/form1.html']").click
end

When /^I select checkbox for home$/ do
  page.find(:xpath, "//input[@id='cf_6_0']").click
  
end

When /^I enter customer details$/ do |table|
  table.hashes.each do |textfield|
    tBox1 = textfield['customer_name']
    tBox2 = textfield['customer_phone']
    tBox3 = textfield['best_tome_to_call']
    tBox4 = textfield['address']
    tBox5 = textfield['email']
    tBox6 = textfield['message']
  fill_in "name", :with => tBox1
  fill_in "cf_3", :with => tBox2
  fill_in "cf_28", :with => tBox3
  fill_in "cf_29", :with => tBox4
  fill_in "email", :with => tBox5
  fill_in "cf_4", :with => tBox6
  end
  
end


Then /^I see home checkbox selected$/ do
 puts "selected"
end


Then /^I see the text 'Overseas Health Insurance Coverage'$/ do
  page.find(:xpath, "//div[@class='art-article']/p[5]/strong/span/span").text.include?("Overseas Health Insurance Coverage")
end

