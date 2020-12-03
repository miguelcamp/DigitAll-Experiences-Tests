Feature: Tab Encuesta
    As a Digitall Experiences user
    I want to create public catalogs

Background: Setup
    Given I have logged in to the Digitall Experiences website
    And I am on the catalogs page

Scenario: Create public catalog        
    When I click on the "+" button
    And I enter the required fields as show below
    |Nombre:            | Mi Catalogo Publico     |
    |Descripcion:       | Este Es Mi Catalogo     |
    |Compañia:          | UCB                     |
    And I select "UCB" on "Compañia"
    And I click button add catalog
    Then the confirmation screen is displayed

Scenario: View public catalog      
    When I click on the catalog 
    Then I will see catalog name 
  
Scenario: Delete public catalog        
    When I click on the Eliminar button
    And I confirm the delete action
    Then the catalog will no longer be on the list