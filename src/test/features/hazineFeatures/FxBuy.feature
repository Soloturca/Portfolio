Feature: Orion Finance Finco Test Scenarios / Test Cases for Treasury

  #This feature includes these steps:
  #1.) Döviz Alım

  @Treasury
  Scenario: Fx Buy

    Given I go to "https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/" with this username: "30060" and this password:"1"
    Then I see treasury page
    And I wait treasury menu for 30060 element 3 seconds at index 1
    When I click element: treasury menu for 30060 at index 1
    And I wait Derivative transactions menu for 30060 element 3 seconds at index 1
    When I click element: Derivative transactions menu for 30060 at index 1
    And I wait Fx menu for 30060 element 3 seconds at index 1
    When I click element: Fx menu for 30060 at index 1

    And I wait Fx first bank element 30 seconds at index 1
    And I click element: Fx first bank at index 1
    And I wait Fx first bank code element 30 seconds at index 1
    And I click element: Fx first bank code at index 1
    And I wait Fx first bank akbank element 30 seconds at index 1
    And I click element: Fx first bank akbank at index 1
    And I wait Fx first bank search button element 30 seconds at index 1
    And I click element: Fx first bank search button at index 1
    And I wait Fx first bank akbank option element 30 seconds at index 1
    And I click element: Fx first bank akbank option at index 1

    And I wait Fx amount element 30 seconds at index 1
    And I click element: Fx amount at index 1
    Then I enter "10000" text to Fx amount at index 1

    And I wait Fx rate element 30 seconds at index 1
    And I click element: Fx rate at index 1
    Then I enter "18" text to Fx rate at index 1

    And I wait Fx second bank element 30 seconds at index 1
    And I click element: Fx second bank at index 1
    And I wait Fx currency code element 30 seconds at index 1
    And I click element: Fx currency code at index 1
    And I wait Fx currency code usd element 30 seconds at index 1
    And I click element: Fx currency code usd at index 1
    And I wait Fx second bank search button element 30 seconds at index 1
    And I click element: Fx second bank search button at index 1
    And I wait Fx second bank usd option element 30 seconds at index 1
    And I click element: Fx second bank usd option at index 1

    And I wait Fx buy button element 30 seconds at index 1
    And I click element: Fx buy button at index 1

