Given(/^I am on the Digitall Experience website$/) do
    page.driver.browser.manage.window.maximize
    visit('http://3.14.118.36:8080/dallex/login')
end

Given(/^I enter my user and password login$/) do
    fill_in 'Usuario', :with => ENV['USER']
    fill_in 'Password', :with => ENV['PSW']
end

When(/^I press the "([^"]*)" login button$/) do |arg1|
    xpath = '/html/body/app-root/div/div/app-login/div/div/div[2]/form/div/form/div/div[4]/div/button'
    find(:xpath, xpath).click
   end

Then(/^I am on home page$/) do
   expect(page).to have_content("Eventos")
  end
