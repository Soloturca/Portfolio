Feature: Orion Finance Finco Test Scenarios / Test Cases for Treasury

  #This feature includes these steps:
  #1.) Parametre Tanımlama Mevcut Sekmesi

  @Treasury
  Scenario: Query Treasury Parameter
   #Mevcut Parametre Sorgulama
    Given I go to "https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/" with this username: "30060" and this password:"1"
    Then I see treasury page
    And I wait treasury menu for 30060 element 3 seconds at index 1
    When I click element: treasury menu for 30060 at index 1
    Then I see treasury page
    And I wait administrative menu for 30060 element 3 seconds at index 1
    When I click element: administrative menu for 30060 at index 1
    And I wait treasury parameter menu element 3 seconds at index 1
    When I click element: treasury parameter menu at index 1
    And I click element: treasury parameter current tab at index 1
    And I wait treasury parameter date area element 30 seconds at index 1
    And I click element: treasury parameter name area at index 1
    And I click element: treasury parameter name area option at index 1
    And I click element: treasury parameter value area at index 1
    And I enter "2" text to treasury parameter value area at index 1
    And I click element: treasury parameter query button at index 1


