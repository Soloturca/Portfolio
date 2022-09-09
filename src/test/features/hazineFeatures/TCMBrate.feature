Feature: Orion Finance Finco Test Scenarios / Test Cases for Treasury

  #This feature includes these steps:
  #1.) TCMB kurları getir.

  @Treasury
  Scenario: TCMB kurlarının sisteme alınması
   #TCMB Kur/Parite Getir

    Given I go to "https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/" with this username: "30060" and this password:"1"
    Then I see treasury page
    And I wait treasury menu for 30060 element 3 seconds at index 1
    When I click element: treasury menu for 30060 at index 1
    And I wait administrative menu for 30060 element 3 seconds at index 1
    When I click element: administrative menu for 30060 at index 1
    And I wait tcmb rates menu for 30060 element 3 seconds at index 1
    When I click element: tcmb rates menu for 30060 at index 1
    And I wait tcmb get rates button element 30 seconds at index 1
    When I click element: tcmb get rates button at index 1

