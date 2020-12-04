Feature: Tab Initial View
    As a Digitall Experiences user
    I want to create, see and delete Initial Views


@login @goToCatalogs @createCatalog @createPoll 
Scenario: Create Initial View
    When I click button to add view
    And I enter the required fields to create initial view as shown below
    |Titulo:            | Mi Vista Inicial       |
    |Tipo:              | Inicial                |
    |Mensaje:           | Saludos                |
    And I click button add view
    Then the confirmation view created "Vista creada con éxito" screen is displayed

@login @goToCatalogs @goToPoll
Scenario: See Initial View      
    When I click on arrow next to a view named "Mi Vista Inicial"
    Then I will see a view with name "Mi Vista Inicial"
    And I will see a view with message "Saludos"

#  @login @goToCatalogs 
# Scenario: Delete poll
#     When I click on poll "Mi Encuesta"
#     And I click on the "Eliminar" poll button
#     And I confirm the delete poll action
#     Then the poll "Mi Encuesta" will no longer be on the list
