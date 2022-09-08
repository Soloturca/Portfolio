Feature: Orion Finance Finco Test Scenarios / Test Cases for Treasury

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

  #This feature includes these steps:
  #1.) Parametre Tanımlama Yeni Sekmesi

  @TreasuryParameter
  Scenario: Add Treasury Parameter

   #Yeni Parametre Tanımlama
    Given I go to "https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/" with this username: "30060" and this password:"1"
    Then I see treasury page
    And I wait treasury menu for 30060 element 3 seconds at index 1
    When I click element: treasury menu for 30060 at index 1
    And I wait administrative menu for 30060 element 3 seconds at index 1
    When I click element: administrative menu for 30060 at index 1
    And I wait treasury parameter menu element 3 seconds at index 1
    When I click element: treasury parameter menu at index 1
    And I wait treasury parameter date area element 30 seconds at index 1
    And I click element: treasury parameter name area at index 1
    And I click element: treasury parameter name area option at index 1
    And I click element: treasury parameter value area at index 1
    And I enter "2" text to treasury parameter value area at index 1
    And I click element: treasury parameter save button at index 1



