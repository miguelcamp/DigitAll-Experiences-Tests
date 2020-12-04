Given('I have logged in to the Digitall Experiences website') do
  page.driver.browser.manage.window.maximize
  visit(ENV['URL'])
  fill_in 'Usuario', :with => ENV['USER']
  fill_in 'Password', :with => ENV['PSW']
  css = '.LoginButton'
  find(:css, css).click
end

Given('I am on the catalogs page') do
  xPath = "//a[contains(@class,'nav-link') and contains(text(), 'Catálogo')]"
  find(:xpath, xPath).click
end
  
#Crear
When('I click on the {string} button') do |tipoCatalogo|
  xPath = "(//i[@title='Añadir al Catálogo'])[1]"
  if tipoCatalogo == "Añadir Catalogo Publico" 
    xPath = "(//i[@title='Añadir al Catálogo'])[2]"
  end
  find(:xpath, xPath ).click
end
  
When('I enter the required fields as show below') do |table|
  text = Time.now.strftime("%d%m%Y%H%M")
  data = table.rows_hash
  data.each_pair do |key, value|
  case key
    when "Nombre:"
      fill_in 'Ingrese nombre del catálogo', :with => value
    when "Descripcion:"
      fill_in 'Ingrese descripción del catálogo', :with => value
    end

  end
  sleep 3
end
  
When('I select {string} on {string}') do |compania, string2|
  xPath = "(//option[@class='ng-star-inserted'  and contains(text(), '"+compania+"')])[1]"
  find(:xpath, xPath).click
end

 When('I click button add catalog') do
  sleep 3 
  xPath = "//button [2]"
  find(:xpath, xPath).click
end

Then('the confirmation screen is displayed') do
  xPath = "//div [@class='toast-message ng-star-inserted' and contains (text(),' Catálogo creado con éxito ')]"
  text= " Catálogo creado con éxito "
  sleep 3
  expect(xPath).to have_content(text)
end

  #Ver Catalogo
When('I click on the catalog {string}') do |catalogo|
  xPath = "//span[text()='"+catalogo+"']"
  find(:xpath, xPath).click
end
  
Then('I will see catalog name {string}') do |catalogo|
  text= catalogo
  xPath = "//span[text()='"+catalogo+"']"
  expect(xPath).to have_content(text)

end

#Eliminar
When('I click on the Eliminar button from {string}') do |catalogo|
  xPath = "//span[(text()='"+catalogo+"')]/../../descendant::i[contains(@class, 'sidebar-catalog-trash-icon')]"
  find(:xpath, xPath).click
end
  
When('I confirm the delete action') do
  xPath = "//button[text()=' Si ']"
  find(:xpath,xPath).click
end
  
Then('the catalog {string} will no longer be on the list') do |catalogo|
  text= catalogo
  xPath = "//span[@class='sidebar-name text-overflow text-overflow-sidebar dae-font-main-color']"
  sleep 3
  expect(xPath).to have_no_content(text)

end
  