Feature: Detalle Campaña
    As a Digitall Experiences user
    I want to review campaign polls

Background: 
  Given I have logged in to the Digitall Experiences website

Scenario: View Assigned Polls       
  Given I am on the campaigns page
  And a test campaign named "Mi Campaña" exists
  When I click on "Mi Campaña"
  Then I will be able to assign a poll

