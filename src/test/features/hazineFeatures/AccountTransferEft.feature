Feature: Orion Finance Finco Test Scenarios / Test Cases for Treasury

  #This feature includes these steps:
  #1.) Hesaplar Arası Transfer Eft

  @Treasury
  Scenario: Account Transactions Eft Senario
   #Yeni Parametre Tanımlama
    Given I go to "https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/" with this username: "30060" and this password:"1"
    Then I see treasury page
    And I wait treasury menu for 30060 element 3 seconds at index 1
    When I click element: treasury menu for 30060 at index 1
    And I wait Account management menu element 3 seconds at index 1
    When I click element: Account management menu at index 1
    And I wait Account transfer menu element 3 seconds at index 1
    When I click element: Account transfer menu at index 1
    And I wait Account transfer sending bank element 30 seconds at index 1
    When I click element: Account transfer sending bank at index 1
    When I click element: Account transfer sending bank code at index 1
    When I click element: Account transfer sending bank akbank at index 1
    And I click element: Account transfer sending bank search button at index 1
    When I click element: Account transfer sending bank akbank option at index 1
    And I wait Account transfer receiving bank element 30 seconds at index 1
    When I click element: Account transfer receiving bank at index 1
    When I click element: Account transfer receiving bank code at index 1
    And I click element: Account transfer receiving bank code at index 1
    When I click element: Account transfer receiving bank garanti at index 1
    And I click element: Account transfer receiving bank search button at index 1
    When I click element: Account transfer receiving bank garanti option at index 1
    And I wait Account transfer amount element 30 seconds at index 1
    And I click element: Account transfer amount at index 1
    Then I enter "10000" text to Account transfer amount at index 1
    And I wait Account transfer operation code element 30 seconds at index 1
    And I click element: Account transfer operation code at index 1
    And I wait Account transfer operation option element 30 seconds at index 1
    And I click element: Account transfer operation option at index 1
    And I wait Account transfer description element 30 seconds at index 1
    And I click element: Account transfer description at index 1
    Then I enter "otomasyon test" text to Account transfer description at index 1
    And I wait Account transfer eft button element 30 seconds at index 1
    And I click element: Account transfer eft button at index 1
    





