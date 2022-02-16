Feature: Demo

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "3003" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I have to refresh the page
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

    And I wait customer transactions button element 30 seconds at index 1
    When I click element: customer transactions button at index 1
    Then I see customerTransactions page
    And I wait customer group management button element 30 seconds at index 1
    When I click element: customer group management button at index 1
    And I wait add new main group button element 30 seconds at index 1
    When I click element: add new main group button at index 1
    Then I enter unique text to main group name text area at index 1

    And I wait save button element 30 seconds at index 1
    When I click element: save button at index 1
    And I wait warning popup element 30 seconds at index 1
    Then I clear text to warning popup text area at index 1
    Then I enter "AUTOMATION" text to warning popup text area at index 1
    And I wait yes button element 30 seconds at index 1
    When I click element: yes button at index 1
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    Then I see home page

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