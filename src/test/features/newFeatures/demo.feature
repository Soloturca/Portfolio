Feature: Demo

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "3003" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I have to refresh the page
    And I have to getText from below element. Above element: username text area at index 1
    And I have to refresh the page


  @Finco
  Scenario: Is Akis: TC001 - User Resumes Work that Started - Unit Officer
    And I wait workflow management button element 30 seconds at index 1
    When I click element: workflow management button at index 1
    Then I see workflowManagement page
    When I click element: jobs I started button at index 1
    Then I enter my reference: "reference number" text to reference number area at index 1
    When I select element: "Grup Kaydetme" under operation type selection at index 1
    When I click element: query button at index 1
    And I wait return to inquiry button element 30 seconds at index 1
    When I click element: return to inquiry button at index 1