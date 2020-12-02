Feature: Asignar Encuesta
    In order to run a campaign
    As a campaign manager
    I want to assign polls to a campaign

Background: Campaign details page
  Given I have logged in to the Digitall Experiences website
  And I am on a campaign details page
  And I have clicked the "Asignar Encuesta" button

Scenario: Assign Touch Point Poll        
  Given I am on the "Asignar Encuestas" window
  When I enter the required fields as show below
	|Nombre de Asignacion:      | Pepito            |
    |Inicio:                    | 11/11/2020        |	
    |Conclusión: 	            | 12/12/2020        |
  And I select a public poll named "Encuesta TP Publica"
  And I select the option "Plataforma" under "Agencia 2"
  And I click on the "Asignar" button
  Then I will see a new Touch Point poll on the list

Scenario: Assign Mystery Poll        
  Given I am on the "Asignar Encuestas" window
  When I enter the required fields as show below
	|Nombre de Asignacion:      | Pepito            |
    |Inicio:                    | 11/11/2020        |	
    |Conclusión: 	            | 12/12/2020        |
  And I select a public poll named "Encuesta MS Publica"
  And I select the option "Plataforma" under "Agencia 2"
  And I click on the "Asignar" button
  Then I will see a new Mystery Shopper poll on the list