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
  When('I click on the {string} button') do |string|
    xPath = "(//i[@title='Añadir al Catálogo'])[1]"
    find(:xpath, xPath ).click
  end
  
  When('I enter the required fields as show below') do |table|
    text = Time.now.strftime("%d%m%Y%H%M")
    data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Nombre:"
    	fill_in 'Ingrese nombre del catálogo', :with => text
	when "Descripcion:"
		fill_in 'Ingrese descripción del catálogo', :with => value
	end
  end
  end
  
  When('I select {string} on {string}') do |string, string2|
    xPath = "(//option[@class='ng-star-inserted'  and contains(text(), 'UCB')])[1]"
    find(:xpath, xPath).click
 end

 When('I click button add catalog') do
    xPath = "//button [2]"
    find(:xpath, xPath).click
    
  end

  Then('the confirmation screen is displayed') do
    css = '#toast-container > div > div'
    text= "Catálogo creado con éxito"
    sleep 3
    kernel.puts find(:css, css ).text
   expect(css).to have_content(text)
 
end
  
  When('I click on the catalog') do
    xPath = "//span[@class='sidebar-name text-overflow text-overflow-sidebar dae-font-main-color' and contains(text(),'Mi Catalogo Privado')]"
    find(:xpath, xPath).click
  end
  
  Then('I will see catalog name') do
    text= "Mi Catalogo Privado"
    xPath = "//span[@class='sidebar-name text-overflow text-overflow-sidebar dae-font-main-color' and contains(text(),'Mi Catalogo Privado')]"
    expect(xPath).to have_content(text)
end

#Eliminar
When('I click on the Eliminar button') do
    xPath = "//div[@class='row']/descendant::span[contains(@class, 'sidebar-name') and (text()='Mi Catalogo Privado')]/../../descendant::i[contains(@class, 'sidebar-catalog-trash-icon')][1]"
    find(:xpath, xPath).click
end
  
  When('I confirm the delete action') do
    xPath = '//button[2]'
    find(:xpath,xPath).click
  end
  
  Then('the catalog will no longer be on the list') do
    text= "Mi Catalogo Privado"
    xPath = "//span[@class='sidebar-name text-overflow text-overflow-sidebar dae-font-main-color' and contains(text(),'Mi Catalogo Privado')]"
    expect(xPath).to have_no_content(text)
end
  