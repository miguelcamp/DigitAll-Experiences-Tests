4#Given I am on the Google homepage
Given(/^I am on the Google homepage$/) do
  page.driver.browser.manage.window.maximize
  visit ('/')
end

#When I search for "houston dynamo tickets"
When(/^I search for "([^"]*)"$/) do |valueToSearch|
  fill_in('q',:with => valueToSearch).native.send_keys(:return)
end

#Then I will click the "Tickets | Houston Dynamo" link
Then(/^I will click the "([^"]*)" link$/) do |searchLink|
  click_link(searchLink)
end


#Then UCB is located at "M.M.Marques, Cochabamba" street
Then(/^I see that the UCB is located at "([^"]*)" street$/) do |adUCB|
  address = find(:xpath, '//*[@id="rhs"]/div/div[1]/div/div[1]/div/div[3]/div/div[2]/div/div/span[2]')
  if address.text != adUCB
    	raise "UCB address should be"+adUCB	
    end
end
