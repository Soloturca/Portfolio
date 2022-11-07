Feature: Orion Finance Finco Test Scenarios / Test Cases for Treasury

  #This feature includes these steps:
  #1.) Hazine Maliyet oranı silinmesi

  @Treasury
  Scenario: Delete Treasury Cost Rate
   #Hazine Maliyet Oranı Silinmesi

    Given I go to "https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/" with this username: "30060" and this password:"1"
    Then I see treasury page
    And I wait treasury menu for 30060 element 3 seconds at index 1
    When I click element: treasury menu for 30060 at index 1
    And I wait administrative menu for 30060 element 3 seconds at index 1
    When I click element: administrative menu for 30060 at index 1
    And I wait treasury cost rate menu for 30060 element 3 seconds at index 1
    When I click element: treasury cost rate menu for 30060 at index 1
    And I click element: treasury cost rate current tab at index 1
    And I wait currency code element 30 seconds at index 1
    When I click element: currency code at index 1
    And I click element: currency code option at index 1
    And I click element: start day at index 1
    And I enter "1" text to start day at index 1
    And I click element: second day count at index 1
    And I enter "180" text to second day count at index 1
    When I click element: start amount at index 1
    And I enter "10000" text to start amount at index 1
    When I click element: second amount at index 1
    And I enter "10000000" text to second amount at index 1
    When I click element: interest rate at index 1
    And I enter "2,45" text to interest rate at index 1
    And I wait treasury cost rate query button element 30 seconds at index 1
    And I click element: treasury cost rate query button at index 1
    And I wait treasury cost rate table line element 30 seconds at index 1
    And I click element: treasury cost rate table line at index 1
    And I click element: treasury cost rate delete button at index 1


