Feature: Orion Finance Finco Test Scenarios - Talimat verme ve iptal

  #1.)Talimat verme : TC001
  #2.)Talimat iptal : TC002

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    And I wait username text area element 30 seconds at index 1
    Then I enter "30060" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see instructions page

  @Talimatvermeveiptal
  Scenario: TALİMAT VERME: TC001

    #Talimat verme - 1Scenario: TC001

    And I wait loan button element 30 seconds at index 1
    When I click element: loan button at index 1
    And I wait instruction operations element 30 seconds at index 1
    When I click element: instruction operations at index 1
    And I wait giving instructions element 30 seconds at index 1
    When I click element: giving instructions at index 1
    And I wait giving instructions page element 30 seconds at index 1
    And I wait credit no area element 30 seconds at index 1
    When I click element: credit no area at index 1
    And I enter "2021091700003" text to credit no area at index 1
    And I wait bank name button element 30 seconds at index 1
    Then I select element: "TURKIYE VAKIFLAR BANKASI T.A.O." under bank name button at index 1
    When I click element: save button at index 1
    And I wait yes button element 30 seconds at index 1
    When I click element: yes button at index 1
    Then I click element: success close button at index 1
    And I wait cancel the instruction element 30 seconds at index 1

  @Talimatvermeveiptal
  Scenario: TALİMAT İPTAL: TC002

   #talimat iptal - 2Scenario: TC002

    When I click element: loan button at index 1
    And I wait instruction operations element 30 seconds at index 1
    When I click element: instruction operations at index 1
    And I wait giving instructions element 30 seconds at index 1
    When I click element: giving instructions at index 1
    And I wait cancel the instruction element 30 seconds at index 1
    Then I click element: cancel the instruction at index 1
    Then I click element: cancel credit no search at index 1
    And I enter "2021091700003" text to cancel credit area at index 1
    And I clear text to start date at index 1
    And I clear text to finish date at index 1
    And I wait cancel credit no search button element 30 seconds at index 1
    When I click element: cancel credit no search button at index 1
    And I wait cancel credit no first row element 30 seconds at index 1
    Then I click element: cancel credit no first row at index 1
    And I wait cancel the instruction save button element 30 seconds at index 1
    And I click element: cancel the instruction save button at index 1
    And I click element: cancel the instruction yes button at index 1
    And I wait cancel the instruction close button element 30 seconds at index 1
    And I click element: cancel the instruction close button at index 1
    And I need to just wait
    Then I click element: system close at index 1
    And I click element: yes button at index 1
    And I wait login user element 30 seconds at index 1



