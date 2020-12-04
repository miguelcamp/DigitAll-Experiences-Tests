When('I click button to add poll') do
    xPath = "//span/descendant::i[@class= 'fa fa-plus-circle create-plus-icon']/.."
    find(:xpath, xPath).click
end
  
When('I enter the required fields to create poll as show below') do |table|
    text = Time.now.strftime("%d%m%Y%H%M")
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Nombre:"
            xPathN = "//label[text()='Nombre:']/following-sibling::input"
            find(:xpath, xPathN).set(value)
        when "Descripción:"
            xPathD = "//label[text()='Descripción:']/following-sibling::input"
            find(:xpath, xPathD).set(value)
        when "Tipo:"
            xPathT = "//option[@class='ng-star-inserted' and contains(text(),'"+value+"')]"
            find(:xpath, xPathT).click
        when "Categoría:"
            xPathC = "//div[@class='ng-input']/descendant::input"
            find(:xpath, xPathC).set(value)
            xPath = "//span [@class='ng-star-inserted' and contains(text(),'"+value+"')]"
            find(:xpath, xPath).click
        end
    end
  sleep 3
end


When('I click button add poll') do
    xPath = "//button[text()='Crear']"
    find(:xpath, xPath).click
    sleep 3
end

Then('the confirmation {string} screen is displayed') do |string|
    xPath = "//div [@class='toast-message ng-star-inserted' and contains (text(),' Encuesta creada con éxito ')]"
    text= string
    sleep 3
    expect(xPath).to have_content(text)
end

# Ver

When('I click on poll {string}') do |poll|
    xPath = "//span [@title='"+poll+"']"
    find(:xpath, xPath).click
    
end
  
Then('I will see poll name {string}') do |poll|
    text= poll
    xPath = "//span[text()='"+poll+"']"
    expect(xPath).to have_content(text)
    sleep 3
end

# Eliminar

When('I click on the {string} poll button') do |poll|
    xPath = "//span [text()=' "+poll+" ']"
    find(:xpath, xPath).click
end

When('I confirm the delete poll action') do
    xPath = "//button [text()=' Si ']"
    find(:xpath, xPath).click
end

Then('the poll {string} will no longer be on the list') do |poll|
    text= poll
    xPath = "//div[@class='ng-star-inserted']/descendant::span"
    sleep 3
    expect(xPath).to have_no_content(text)
end