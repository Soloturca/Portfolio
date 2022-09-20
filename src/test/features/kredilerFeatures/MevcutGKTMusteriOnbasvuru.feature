Feature: Orion Finance Finco Test Scenarios - Mevcut GKT ön başvuru

  #1.)Mevcut gkt müşteri ön başvuru
  #2.)ön başvuru alındı yazısı gorulur

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    And I wait username text area element 30 seconds at index 1
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see loanapplication page

  @MevcutGKTonbasvuru
  Scenario: MEVCUT GKT ON BASVURU:

    #on basvuru - 1Scenario:

    And I wait loan button element 30 seconds at index 1
    When I click element: loan button at index 1
    And I wait loan application element 30 seconds at index 1
    When I click element: loan application at index 1
    Then I click element: pre application at index 1
    And I click element: pre application at index 1
    And I wait page hader element 30 seconds at index 1
    And I need to validate the pre-application screen by page hader at index 1

    And I wait application information element 30 seconds at index 1
    When I click element: application information at index 1
    And I wait tax no element 30 seconds at index 1
    When I click element: tax no at index 1
    And I enter "5485055240" text to tax no area at index 1
    And I click element: partner search button at index 1
    And I need to just wait

    And I wait transaction result element 30 seconds at index 1
    When I click element: close button at index 1
    And I wait continue button element 30 seconds at index 1
    And I click element: continue button at index 1
    And I wait add document element 30 seconds at index 1
    And I need to just wait
    And I need to right scroll verify by right scroll at index 1
    When I upload the file for customer "evrak.jpg" using the: add document at index 1
    Then I wait add document element 30 seconds at index 2
    And  I upload the file for customer "evrak.jpg" using the: add document at index 2
    And I wait preliminary assessment element 30 seconds at index 1
    When I click element: preliminary assessment at index 1
    And I need to see if the preliminary evaluation result is positive by information at index 1
    And I click element: close button at index 1
    And I wait continue button two element 30 seconds at index 1
    When I click element: continue button two at index 1
    Then I click element: close system at index 1
    And I click element: yes button at index 1
    And I wait login username element 30 seconds at index 1



