Feature: Orion Finance Finco Test Scenarios / Test Cases for Treasury

  #This feature includes these steps:
  #1.) Döviz Satım

  @Treasury
  Scenario: Fx Sell

    Given I go to "https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/" with this username: "30060" and this password:"1"
    Then I see treasury page
    And I wait treasury menu for 30060 element 3 seconds at index 1
    When I click element: treasury menu for 30060 at index 1
    And I wait Derivative transactions menu for 30060 element 3 seconds at index 1
    When I click element: Derivative transactions menu for 30060 at index 1
    And I wait Fx menu for 30060 element 3 seconds at index 1
    When I click element: Fx menu for 30060 at index 1

    And I wait Fx transaction type element 30 seconds at index 1
    And I click element: Fx transaction type at index 1
    And I wait Fx transaction type sell element 30 seconds at index 1
    And I click element: Fx transaction type sell at index 1

    And I wait Fx sell second bank element 30 seconds at index 1
    And I click element: Fx sell second bank at index 1
    And I wait Fx currency code element 30 seconds at index 1
    And I click element: Fx currency code at index 1
    And I wait Fx currency code usd element 30 seconds at index 1
    And I click element: Fx currency code usd at index 1
    And I wait Fx second bank search button element 30 seconds at index 1
    And I click element: Fx second bank search button at index 1
    And I wait Fx second bank usd option element 30 seconds at index 1
    And I click element: Fx second bank usd option at index 1

    And I wait Fx sell first bank element 30 seconds at index 1
    And I click element: Fx sell first bank at index 1
    And I wait Fx first bank code element 30 seconds at index 1
    And I click element: Fx first bank code at index 1
    And I wait Fx first bank akbank element 30 seconds at index 1
    And I click element: Fx first bank akbank at index 1
    And I wait Fx first bank search button element 30 seconds at index 1
    And I click element: Fx first bank search button at index 1
    And I wait Fx first bank akbank option element 30 seconds at index 1
    And I click element: Fx first bank akbank option at index 1

    And I wait Fx sell button element 30 seconds at index 1
    And I click element: Fx sell button at index 1

    And I wait Fx sell amount element 30 seconds at index 1
    And I click element: Fx sell amount at index 1
    Then I enter "10000" text to Fx sell amount at index 1

    And I wait Fx sell rate element 30 seconds at index 1
    And I click element: Fx sell rate at index 1
    Then I enter "18" text to Fx sell rate at index 1




