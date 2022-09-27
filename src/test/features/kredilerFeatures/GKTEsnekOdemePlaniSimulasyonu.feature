Feature: Orion Finance Finco Test Scenarios - GKT Müşteri Esnek Ödeme Planı Simülasyonu

  #1.)GKT MÜŞTERİ ESNEK ÖDEME PLANI SİMÜLASYONU:

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    And I wait username text area element 30 seconds at index 1
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see paymentplan page

  @GKTEsnekOdemePlaniSimulasyonu
  Scenario: GKT MÜŞTERİ ESNEK ÖDEME PLANI SİMÜLASYONU:

    #GKT MÜŞTERİ ESNEK ÖDEME PLANI SİMÜLASYONU:

    And I wait loan button element 30 seconds at index 1
    When I click element: loan button at index 1
    And I wait payment plan element 30 seconds at index 1
    When I click element: payment plan at index 1
    And I wait payment plan simulation element 30 seconds at index 1
    When I click element: payment plan simulation at index 1

    And I wait payment plan simulation page element 30 seconds at index 1
    When I click element: interest calculation at index 1
    And I wait loan amount element 30 seconds at index 1
    When I enter "50000" text to loan amount area at index 1
    And I wait number of installments element 30 seconds at index 1
    Then I enter "4" text to number of installments area at index 1
    And I click element: customer type at index 1
    And I select element: "KURUMSAL" under customer type select at index 1
    And I wait application type element 30 seconds at index 1
    When I click element: application type at index 1
    Then I select element: "GERÇEK KİŞİ TACİR" under application type select at index 1
    And I click element: product group at index 1
    And I select element: "VODAFONE NET SUNU TİPLERİ" under product group code at index 1
    And I wait product code element 30 seconds at index 1
    When I click element: product code at index 1
    Then I select element: "DONANIM - YILLIK" under product code area at index 1
    And I click element: pricing at index 1
    And I select element: "176 - ECE TEST ESNEK ÖDEME" under pricing code at index 1
    And I wait credit type element 30 seconds at index 1
    When I select element: "TAKSİTLİ TİCARİ KREDİ" under credit type area at index 1
    And I wait interest calculate element 30 seconds at index 1
    And I click element: interest calculate at index 1
    And I wait next step element 30 seconds at index 1
    When I click element: next step at index 1
    Then I wait create payment plan element 30 seconds at index 1
    And I click element: create template at index 1
    Then I click element: calculate button at index 1
    And I wait final payment plan element 30 seconds at index 1
    






