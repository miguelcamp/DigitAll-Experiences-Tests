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

Before '@goToCatalogs' do
  xPath = "//a[contains(@class,'nav-link') and contains(text(), 'Catálogo')]"
  find(:xpath, xPath).click
end


Before '@createCatalog' do 
  xPath = "(//i[@title='Añadir al Catálogo'])[1]"
  find(:xpath, xPath ).click
  fill_in 'Ingrese nombre del catálogo', :with => "Mi Catalogo Encuesta"
  fill_in 'Ingrese descripción del catálogo', :with => "Este Es Mi Catalogo"
  xPath = "(//option[@class='ng-star-inserted'  and contains(text(), 'UCB')])[1]"
  find(:xpath, xPath).click
  xPath = "//button [2]"
  find(:xpath, xPath).click
end

Before '@createPoll' do 
  xPath = "//span[text()='Mi Catalogo Encuesta'][1]"
  find(:xpath, xPath).click
  xPath = "//span/descendant::i[@class= 'fa fa-plus-circle create-plus-icon']/.."
  find(:xpath, xPath).click

  xPathN = "//label[text()='Nombre:']/following-sibling::input"
  find(:xpath, xPathN).set("Mi Encuesta")

  xPathD = "//label[text()='Descripción:']/following-sibling::input"
  find(:xpath, xPathD).set("Esta Es Mi Encuesta")

  xPathT = "//option[@class='ng-star-inserted' and contains(text(),'Ninguno')]"
  find(:xpath, xPathT).click

  xPathC = "//div[@class='ng-input']/descendant::input"
  find(:xpath, xPathC).set("Mi Categoria")
  xPath = "//span [@class='ng-star-inserted' and contains(text(),'Mi Categoria')]"
  find(:xpath, xPath).click

  xPath = "//button[text()='Crear']"
  find(:xpath, xPath).click
  sleep 2

  xPath = "//span[@title='Mi Encuesta']"
  find(:xpath, xPath).click
  sleep 3
end

Before '@goToPoll' do
  xPath = "//span[text()='Mi Catalogo Encuesta']"
  find(:xpath, xPath).click
  xPath = "//span [@title='Mi Encuesta']"
  find(:xpath, xPath).click
  sleep 3
end

Before '@createRegularView' do 
  xPath = "//button//i/.."
  find(:xpath, xPath).click

  xPathN = "//label[text()='Titulo:']/following-sibling::input"
  find(:xpath, xPathN).set("Mi Vista Regular")

  xPathT = "//option[@value='CONTENT']"
  find(:xpath, xPathT).click

  xPath = "//button[text()='Crear']"
  find(:xpath, xPath).click

  sleep 3
end

After '@deleteCatalog' do
  xPath = "//span[(text()='Mi Catalogo Encuesta')]/../../descendant::i[contains(@class, 'sidebar-catalog-trash-icon')]"
  find(:xpath, xPath).click

  xPath = "//button[text()=' Si ']"
  find(:xpath,xPath).click

  sleep 3
end

