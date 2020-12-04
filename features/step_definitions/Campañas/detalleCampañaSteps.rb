Given(/^A test campaign named "([^"]*)" exists$/) do |arg1|
    expect(page).to have_content(arg1)
   end


When(/^I click on "([^"]*)"$/) do |linkTitle|
   click_link(linkTitle)
 end

 When(/^I click on the letter next to a Touch Point poll named "([^"]*)"$/) do |pollTitle|
   find("i fa-file-text").click
 end

Then(/^I will be able to assign a poll$/) do
    expect(page).to have_content("Asignar Encuesta")
   end

Then(/^I will open a window with a preview of the poll's views$/) do
    page.should have_xpath('//modal-container')
   end

When(/^I click on the letter next to a Mystery Shopper poll named "([^"]*)"$/) do |pollTitle|
   find("Test").click
 end
   Then(/^I will see the Mystery Shopper poll's details on the center of the page$/) do
   page.should have_xpath('//ms-assignment')
  end