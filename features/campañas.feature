Feature: Tab Campañas
    As a Digitall Experiences user
    I want to create campaigns

Background: 
  Given I have logged in to the Digitall Experiences website
  And I am on the campaigns page

Scenario: Create campaign        
  When I click on the "Crear Campaña" button
  Then I will open the create campaign form

Scenario: View campaign actions      
  When I click on the arrow next to a campaign 
  Then I will see additional info for the campaign
  And I will have the options to Edit, View, and Delete

Scenario: Edit campaign        
  Given I have clicked on the arrow next to a campaign
  When I click on the "Editar Campaña" button
  Then I will open the edit campaign form
  
Scenario: Delete campaign        
  Given I have clicked on the arrow next to a campaign
  When I click on the "Eliminar" button
  And I confirm the action
  Then the campaign will no longer be on the list