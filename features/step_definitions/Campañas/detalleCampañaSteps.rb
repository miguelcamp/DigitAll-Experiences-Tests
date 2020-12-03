Given(/^A test campaign named "([^"]*)" exists$/) do |arg1|
    expect(page).to have_content(arg1)
   end


When(/^I click on "([^"]*)"$/) do |linkTitle|
   click_link(linkTitle)
 end

 Then(/^I will be able to assign a poll$/) do
    expect(page).to have_content("Asignar Encuesta")
   end