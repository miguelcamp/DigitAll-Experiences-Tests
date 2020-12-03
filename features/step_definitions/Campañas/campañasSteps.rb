Given(/^I am on the campaigns page$/) do
    page.driver.browser.manage.window.maximize
    visit('/campaigns')
end

Given(/^I have logged in to the Digitall Experiences website$/) do
    page.driver.browser.manage.window.maximize
    visit('/login')
    fill_in 'Usuario', :with => ENV['USER']
    fill_in 'Password', :with => ENV['PSW']
    xpath = '/html/body/app-root/div/div/app-login/div/div/div[2]/form/div/form/div/div[4]/div/button'
    find(:xpath, xpath).click
end

When(/^I click on the "([^"]*)" button$/) do |arg1|
    xpath = '/html/body/app-root/div/div/app-campaigns/div/div/div/div/button'
    find(:xpath, xpath).click
   end


Then(/^I will open the create campaign form$/) do
   expect(page).to have_content("Crear Campaña")
  end

When(/^I click on the arrow next to a campaign$/) do
  xpath = '/html/body/app-root/div/div/app-campaigns/div/div/div/div/button'
  find(css, 'fa fa-caret-down even').click
  sleep(3)
 end