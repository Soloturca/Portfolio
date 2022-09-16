Feature: Orion Finance Finco Test Scenarios / Test Cases for Treasury

  #This feature includes these steps:
  #1.) TCMB kur sorgulama

  @Treasury
  Scenario: TCMB kur parite sorgulama
   #TCMB Kur/Parite Getir
    Given I go to "https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/" with this username: "30060" and this password:"1"
    Then I see treasury page
    And I wait treasury menu for 30060 element 3 seconds at index 1
    When I click element: treasury menu for 30060 at index 1
    And I wait administrative menu for 30060 element 3 seconds at index 1
    When I click element: administrative menu for 30060 at index 1
    And I wait tcmb rates menu for 30060 element 3 seconds at index 1
    When I click element: tcmb rates menu for 30060 at index 1
    And I wait tcmb query tab element 3 seconds at index 1
    When I click element: tcmb query tab at index 1
    And I wait tcmb date area element 3 seconds at index 1
    When I click element: tcmb date area at index 1
    And I enter "03082022" text to tcmb date area at index 1
    When I click element: tcmb query button at index 1

