When('I enter the required fields to point scale question as shown below') do |table|
    text = Time.now.strftime("%d%m%Y%H%M")
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Título:"
            xPathN = "//label[text()='Título:']/following-sibling::input"
            find(:xpath, xPathN).set(value)
        when "Tipo:"
            xPathT = "//option[@class='ng-star-inserted' and contains(text(),'"+value+"')]"
            find(:xpath, xPathT).click
        when "Valor mínimo:"
            xPathN = "//label[text()='Valor mínimo:']/following-sibling::input"
            find(:xpath, xPathN).set(value)
        when "Valor máximo:"
            xPathN = "//label[text()='Valor máximo:']/following-sibling::input"
            find(:xpath, xPathN).set(value)
        end
    end
  sleep 3
end