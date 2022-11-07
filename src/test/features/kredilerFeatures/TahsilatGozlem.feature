Feature: Orion Finance Finco Test Scenarios - 019.TAHSİLAT GÖZLEM EKRANI KONTROLÜ

  #1.)Tahsilat ve Gözlem Ekranı: TC001

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30090" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

  @TahsilatGözlem
  Scenario: Tahsilat ve Gözlem Ekranı: TC001

    #Tahsilat ve Gözlem Ekranı - 1Scenario:

    And I wait credit element 30 seconds at index 1
    When I click element: credit at index 1
    Then I see loan page
    And I wait collection button element 30 seconds at index 1
    When I click element: collection button at index 1
    And I wait collection observation element 30 seconds at index 1
    When I click element: collection observation at index 1

    When I need to just wait
    Then I need to check area verify by application observation and report at index 1 contains "Tahsilat Gözlem"

    When I enter "2022091400001" text to credit no at index 1
    Then I clear text to loan date at index 2
    Then I need to just wait
    Then I enter "20092022" text to loan date at index 2
    Then I clear text to loan date at index 3
    Then I need to just wait
    Then I enter "20092022" text to loan date at index 3
    And I click element: magnifying glass v2 button at index 1
    And I click element: row button at index 1
    When I need to just wait
    Then I need to check area verify by receipt observation at index 2 contains "Dekont Gözlem"
    Then I see home page

    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1
