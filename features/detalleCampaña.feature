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

Scenario: View Touch Point Poll        
  Given I am on the campaign details page
  When I click on the letter next to a Touch Point poll named "sad"
  Then I will open a window with a preview of the poll's views

Scenario: View Mystery Shopper Poll        
  Given I am on the campaign details page
  When I click on a Mystery Shopper poll named "Test"
  Then I will see the Mystery Shopper poll's details on the center of the page

