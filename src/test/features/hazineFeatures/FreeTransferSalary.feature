Feature: Orion Finance Finco Test Scenarios / Test Cases for Treasury

  #This feature includes these steps:
  #1.) Serbest Transfer Maaş Ödemesi

  @Treasury
  Scenario: Free Transfer Salary

    Given I go to "https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/" with this username: "30060" and this password:"1"
    Then I see treasury page
    And I wait treasury menu for 30060 element 3 seconds at index 1
    When I click element: treasury menu for 30060 at index 1
    And I wait Account management menu element 3 seconds at index 1
    When I click element: Account management menu at index 1
    And I wait Free transfer menu element 3 seconds at index 1
    When I click element: Free transfer menu at index 1

    And I wait Free transfer sender bank element 30 seconds at index 1
    And I click element: Free transfer sender bank at index 1
    And I wait Free transfer sender bank code element 30 seconds at index 1
    And I click element: Free transfer sender bank code at index 1
    And I wait Free transfer sender bank akbank element 30 seconds at index 1
    And I click element: Free transfer sender bank akbank at index 1
    And I wait Free transfer sender bank search button element 30 seconds at index 1
    And I click element: Free transfer sender bank search button at index 1
    And I wait Free transfer sender bank akbank option element 30 seconds at index 1
    And I click element: Free transfer sender bank akbank option at index 1

    And I wait Free transfer operation code element 30 seconds at index 1
    And I click element: Free transfer operation code at index 1
    And I click element: Free transfer operation code salary at index 1

    And I wait Free transfer amount element 30 seconds at index 1
    And I click element: Free transfer amount at index 1
    Then I enter "10000" text to Free transfer amount at index 1

    And I wait Free transfer description element 30 seconds at index 1
    And I click element: Free transfer description at index 1
    Then I enter "otomasyon test" text to Free transfer description at index 1

    And I wait Free transfer eft button element 30 seconds at index 1
    And I click element: Free transfer wage button at index 1


