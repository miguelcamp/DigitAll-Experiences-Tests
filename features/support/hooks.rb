After do 
    Capybara.current_session.driver.quit
end

Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

Before '@login' do
  page.driver.browser.manage.window.maximize
  visit(ENV['URL'])
  fill_in 'Usuario', :with => ENV['USER']
  fill_in 'Password', :with => ENV['PSW']
  css = '.LoginButton'
  find(:css, css).click
end
