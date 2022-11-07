Feature: Orion Finance Finco Test Scenarios - 017.TAHAKKUK GÖZLEM KONTROLÜ

   #1.)Tahakkuk Gözlem Ekranı: TC001

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30030" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see loan page

  @TahakkukGozlem
  Scenario: Tahakkuk Gözlem Ekranı: TC001

    #Tahakkuk Gözlem Ekranı - 1Scenario:

    And I wait credit element 30 seconds at index 1
    When I click element: credit at index 1
    And I wait loan disbursement element 30 seconds at index 1
    And I click element: loan disbursement at index 1
    And I wait accrual observation element 30 seconds at index 1
    Then I click element: accrual observation at index 1
    And I wait credit monitoring credit no text area element 30 seconds at index 1
    Then I enter "2022092700002" text to credit monitoring credit no text area at index 1
    And I click element: closeview at index 1
    Then I need to just wait
    Then I clear text to loan date at index 38
    Then I need to just wait
    Then I enter "27092022" text to loan date at index 38
    And I wait magnifying glass v2 button element 30 seconds at index 2
    And I click element: magnifying glass v2 button at index 2
    And I wait select first row element 30 seconds at index 20
    And I click element: select first row at index 20
    And I click element: magnifying glass v2 button at index 1
    Then I need to just wait
    Then I need to check area verify by application observation and report at index 1 contains "Tahakkuk Gözlem"
    

