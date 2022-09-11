Feature: Orion Finance Finco Test Scenarios / Test Cases for Treasury

  #This feature includes these steps:
  #1.) Grup Kuru Mevcut sekmesi

  @Treasury
  Scenario: Query Group Currency Rate
   #Grup Kuru Sorgulama
    Given I go to "https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/" with this username: "30060" and this password:"1"
    Then I see treasury page
    And I wait treasury menu for 30060 element 3 seconds at index 1
    When I click element: treasury menu for 30060 at index 1
    And I wait administrative menu for 30060 element 3 seconds at index 1
    When I click element: administrative menu for 30060 at index 1
    And I wait group currency rate menu element 3 seconds at index 1
    When I click element: group currency rate menu at index 1
    And I click element: group currency current tab at index 1
    And I wait group currency process date element 30 seconds at index 1
    When I click element: group currency code at index 1
    And I click element: group currency code option at index 1
    And I click element: group currency buying rate at index 1
    And I enter "12" text to group currency buying rate at index 1
    And I click element: group currency selling rate at index 1
    And I enter "18" text to group currency selling rate at index 1
    And I click element: group currency query button at index 1


