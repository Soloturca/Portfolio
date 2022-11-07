Feature: Orion Finance Finco Test Scenarios / Test Cases for Treasury

  #This feature includes these steps:
  #1.) Döviz Arbitraj

  @Treasury
  Scenario: Fx Arbitrage

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
    And I wait Fx transaction type arbitrage element 30 seconds at index 1
    And I click element: Fx transaction type arbitrage at index 1

    And I wait Fx arbitrage parity element 30 seconds at index 1
    And I click element: Fx arbitrage parity at index 1
    Then I enter "2" text to Fx arbitrage parity at index 1

    And I wait Fx arbitrage second bank element 30 seconds at index 1
    And I click element: Fx arbitrage second bank at index 1
    And I wait Fx currency code element 30 seconds at index 1
    And I click element: Fx currency code at index 1
    And I wait Fx currency code usd element 30 seconds at index 1
    And I click element: Fx currency code usd at index 1
    And I wait Fx second bank search button element 30 seconds at index 1
    And I click element: Fx second bank search button at index 1
    And I wait Fx second bank usd option element 30 seconds at index 1
    And I click element: Fx second bank usd option at index 1

    And I wait Fx arbitrage first bank element 30 seconds at index 1
    And I click element: Fx arbitrage first bank at index 1
    And I wait Fx currency code element 30 seconds at index 1
    And I click element: Fx currency code at index 1
    And I wait Fx currency code eur element 30 seconds at index 1
    And I click element: Fx currency code eur at index 1
    And I wait Fx second bank search button element 30 seconds at index 1
    And I click element: Fx second bank search button at index 1
    And I wait Fx second bank eur option element 30 seconds at index 1
    And I click element: Fx second bank eur option at index 1

    And I wait Fx arbitrage sell amount element 30 seconds at index 1
    And I click element: Fx arbitrage sell amount at index 1
    Then I enter "10000" text to Fx arbitrage sell amount at index 1

    And I wait Fx arbitrage button element 30 seconds at index 1
    And I click element: Fx arbitrage button at index 1