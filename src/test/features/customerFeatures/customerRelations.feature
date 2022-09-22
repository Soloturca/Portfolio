Feature: Orion Finance Finco Test Scenarios - Customer relations
  #  This feature includes these steps:
#1.) Kurumsal-Müşteri İlişki Gözlem: TC001
#2.) GKT-Müşteri İlişki Gözlem: TC002




  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30070" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see customer page
    


  @customerrelation
  Scenario: Kurumsal-Müşteri İlişki Gözlem: TC001 -
    When I click element: customer transaction at index 1
    And I wait customer relations observation element 30 seconds at index 1
    When I click element: customer relations observation at index 1
    And I wait customer code area element 10 seconds at index 1
    And I enter "11887" text to customer code area at index 1
    And I click element: customer relations observation searh button at index 1

  @customerrelation
  Scenario: GKT-Müşteri İlişki Gözlem: TC002 -
    When I click element: customer transaction at index 1
    And I wait customer relations observation element 30 seconds at index 1
    When I click element: customer relations observation at index 1
    And I wait customer code area element 10 seconds at index 1
    And I enter "11888" text to customer code area at index 1
    And I click element: customer relations observation searh button at index 1
