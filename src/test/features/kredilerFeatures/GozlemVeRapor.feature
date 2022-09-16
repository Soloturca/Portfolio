Feature: Orion Finance Finco Test Scenarios - 007.GÖZLEM VE RAPOR KONTROLÜ

  #1.)Gözlem ve Rapor Ekranı: TC001

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

  @GozlemVeRapor
  Scenario: GÖZLEM VE RAPOR: TC001

    #Gözlem ve Rapor Ekranı - 1Scenario:

    And I wait loan button credit element 30 seconds at index 1
    When I click element: loan button credit at index 1
    Then I see loan page
    And I wait application button element 30 seconds at index 1
    When I click element: application button at index 1
    And I wait observation and report button element 30 seconds at index 1
    When I click element: observation and report button at index 1

    When I need to just wait
    Then I need to observation and report verify by application observation and report at index 1

    When I enter "11876" text to credit application observation and report customer no button at index 1
    And I wait credit application observation and report search and list button element 30 seconds at index 1
    When I click element: credit application observation and report search and list button at index 1
    Then I see home page

    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1
