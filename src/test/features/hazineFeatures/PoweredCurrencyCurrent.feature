Feature: Orion Finance Finco Test Scenarios / Test Cases for Treasury

  #This feature includes these steps:
  #1.) Güçlü döviz sorgulama

  @Treasury
  Scenario: Query Powered Currency
   #Güçlü Döviz Cinsi Yönetimi Mevcut Sekmesi
    Given I go to "https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/" with this username: "30060" and this password:"1"
    Then I see treasury page
    And I wait treasury menu for 30060 element 3 seconds at index 1
    When I click element: treasury menu for 30060 at index 1
    Then I see treasury page
    And I wait administrative menu for 30060 element 3 seconds at index 1
    When I click element: administrative menu for 30060 at index 1
    And I wait powered currency menu element 3 seconds at index 1
    When I click element: powered currency menu at index 1
    And I click element: powered currency current tab at index 1
    And I wait first currency current element 30 seconds at index 1
    When I click element: first currency current at index 1
    And I click element: first currency option current at index 1
    When I click element: second currency current at index 1
    And I click element: second currency option current at index 1
    When I click element: powered currency current at index 1
    And I click element: powered currency option current at index 1
    And I click element: powered currency query button at index 1


