Given(/^I navigate to the Arastta home page$/) do
   page.driver.browser.manage.window.maximize
   visit('https://arastta.org/demo')

end

When(/^I press the "([^"]*)" link$/) do |linkTitle|
  click_link(linkTitle)
end


Then(/^the FAQ page is displayed$/) do
   expect(page).to have_content('FAQ')
   xpath_base = '/html/body/div[2]/div/div/div/main/article/div[1]/div/div[1]/div/h3'
   cloud_title = find(:xpath, xpath_base).text
   cloud_title_expected="Arastta Cloud"
   if cloud_title != cloud_title_expected
    	raise "Cloud title is wrong expect:"+cloud_title_expected+" Actual: "+cloud_title
    end
end
