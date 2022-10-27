Feature: Orion Finance Finco Test Scenarios - GKT Müşteri Ödeme Planı Gözlem


  # 1.)GKT MÜŞTERİ ÖDEME PLANI GÖZLEM


  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    And I wait username text area element 30 seconds at index 1
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see paymentplan page

  @GKTOdemePlaniGozlem
  Scenario: GKT MÜŞTERİ ÖDEME PLANI GÖZLEM:


     #GKT MÜŞTERİ ÖDEME PLANI GÖZLEM: - 1Scenario:

    And I wait loan button element 30 seconds at index 1
    When I click element: loan button at index 1
    And I wait payment plan element 30 seconds at index 1
    When I click element: payment plan at index 1
    And I wait payment plan observation element 30 seconds at index 1
    When I click element: payment plan observation at index 1

    And I wait payment plan observation page element 30 seconds at index 1
    When I click element: credit no at index 1
    Then I enter "2021121600002" text to credit no area at index 1
    And I wait button search two element 30 seconds at index 1
    When I click element: button search two at index 1
    And I wait payment plan result element 30 seconds at index 1
    Then I need to check area verify by payment plan result at index 1 contains "Ödeme Planları"





