Feature: Detalle Campaña
    As a Digitall Experiences user
    I want to review campaign polls


Scenario: View Assigned Polls       
  Given I have logged in to the Digitall Experiences website
  And I am on the campaigns page
  And a test campaign exists
  When I click on the test campaign name
  Then I will navigate to the campaign details page

Scenario: View Touch Point Poll        
  Given I have logged in to the Digitall Experiences website
  And I am on the campaign details page
  When I click on the view Touch Point poll button
  Then I will open a window with a preview of the poll's views

Scenario: View Mystery Shopper Poll        
  Given I have logged in to the Digitall Experiences website
  And I am on the campaign details page
  When I click on a Mystery Shopper poll
  Then I will see the Mystery Shopper poll's details on the center of the page

