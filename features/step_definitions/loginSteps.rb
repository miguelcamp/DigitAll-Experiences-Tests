Given(/^I am on the Digitall Experience website$/) do
    page.driver.browser.manage.window.maximize
    visit(ENV['URL'])
end

Given(/^I enter my user and password login$/) do
    fill_in 'Usuario', :with => ENV['USER']
    fill_in 'Password', :with => ENV['PSW']
end

When(/^I press the "([^"]*)" login button$/) do |arg1|
    css = '.LoginButton'
    find(:css, css).click
end

Then(/^I am on home page$/) do
   expect(page).to have_content("Eventos")
end
