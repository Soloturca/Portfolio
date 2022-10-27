Feature: Orion Finance Finco Test Scenarios - Ön Başvuru Gözlem

  #1.)Ön Başvuru Gözlem

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    And I wait username text area element 30 seconds at index 1
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see loanapplication page

  @OnBasvuruGozlem
  Scenario: ON BASVURU GOZLEM:

    #on basvuru gözlem - 1Scenario:

    And I wait loan button element 30 seconds at index 1
    When I click element: loan button at index 1
    And I wait loan application element 30 seconds at index 1
    When I click element: loan application at index 1
    Then I click element: preliminary observation at index 1
    And I click element: preliminary observation at index 1
    And I wait preliminary observation page element 30 seconds at index 1

    When I click element: search list applications at index 1
    And I wait select first line element 30 seconds at index 1
    Then I click element: select first line at index 1
    And I wait detail button element 30 seconds at index 1
    When I click element: detail button at index 1
    Then I go to top of the site
    And I wait application information page element 30 seconds at index 1
    Then I click element: document page at index 1
    And I wait document title element 30 seconds at index 1
    Then I click element: back button at index 1
    And I wait preliminary observation page element 30 seconds at index 1

