Feature: Orion Finance Finco Test Scenarios / Test Cases for Treasury

  #This feature includes these steps:
  #1.) Hesap Hareketleri Gözlem Ekranı

  @Treasury
  Scenario: Account Transactions Senario
   #Yeni Parametre Tanımlama
    Given I go to "https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/" with this username: "30060" and this password:"1"
    Then I see treasury page
    And I wait treasury menu for 30060 element 3 seconds at index 1
    When I click element: treasury menu for 30060 at index 1
    And I wait Account management menu element 3 seconds at index 1
    When I click element: Account management menu at index 1
    And I wait Account transaction menu element 3 seconds at index 1
    When I click element: Account transaction menu at index 1
    And I wait treasury transactions date first element 30 seconds at index 1
    And I click element: treasury transactions date first at index 1
    Then I enter "01062022" text to treasury transactions date first at index 1
    And I click element: treasury transactions date second at index 1
    Then I enter "10062022" text to treasury transactions date second at index 1
    And I click element: treasury transactions search button at index 1


