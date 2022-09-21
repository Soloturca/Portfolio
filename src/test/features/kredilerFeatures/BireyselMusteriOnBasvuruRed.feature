Feature: Orion Finance Finco Test Scenarios - Bireysel müşteri ön başvuru red

  #1.)Bireysel müşteri ön başvuru red

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    And I wait username text area element 30 seconds at index 1
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see loanapplication page

  @BireysekMusteriOnBasvuruRed
  Scenario: BIREYSEL MUSTERI ON BASVURU RED:

    #on basvuru red - 1Scenario:

    And I wait loan button element 30 seconds at index 1
    When I click element: loan button at index 1
    And I wait loan application element 30 seconds at index 1
    When I click element: loan application at index 1
    Then I click element: pre application at index 1
    And I click element: pre application at index 1

    And I wait application information element 30 seconds at index 1
    When I click element: application information at index 1
    And I wait tax no element 30 seconds at index 1
    When I click element: tax no at index 1
    And I enter "1649952269" text to tax no area at index 1
    And I click element: partner search button at index 1
    And I need to just wait

    And I wait error text element 30 seconds at index 1
    When I click element: error close button at index 1
    Then I click element: close system at index 1
    And I click element: yes button at index 1
    And I wait login username element 30 seconds at index 1



