Feature: Orion Finance Finco Test Scenarios - YENİ TEDARİKÇİ TANIMLAMA

  #1.)YENİ tedarikçi TANIMLAMA
  #2.)yeni tedarikçi tanımlama onay

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    And I wait username text area element 30 seconds at index 1
    When I enter "19007" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see buy page

  @YeniTedarikciTanımlama
  Scenario: YENİ TEDARİKÇİ TANIMLAMA LOGİN:

    #Yeni tedarikçi tanımlma - 1Scenario:

    And I wait purchase and expense button element 30 seconds at index 1
    When I click element: purchase and expense button at index 1
    Then I click element: managerial at index 1
    Then I click element: supplier identification at index 1
    And I wait page header element 30 seconds at index 1
    When I click element: new button at index 1
    And I wait tck number element 30 seconds at index 1
    Then I click element: tck number at index 1
    Then I enter "46333196904" text to tck number area at index 1
    When I click element: country at index 1 
    Then I select element: "TÜRKİYE" under country select at index 1
    And I wait phone number element 30 seconds at index 1
    Then I click element: phone number at index 1
    Then I enter "5419418040" text to phone number area at index 1
    And I wait email element 30 seconds at index 1
    When I click element: email at index 1
    Then I enter "tubidede@gmail.com" text to email area at index 1
    And I wait account info element 30 seconds at index 1
    Then I click element: account info at index 1
    And I wait bank code element 30 seconds at index 1
    When I click element: bank code at index 1
    Then I select element: "TÜRKİYE GARANTİ BANKASI A.Ş." under bank code select at index 1
    And I wait branch code element 30 seconds at index 1
    When I click element: branch code at index 1
    Then I select element: "FETHİYE ÇARŞI - 1124" under branch code area at index 1
    And I wait iban element 30 seconds at index 1
    When I click element: iban at index 1
    Then I enter "03 0006 2001 1240 0003 4567 83" text to iban area at index 1
    And I wait currency code element 30 seconds at index 1
    When I click element: currency code at index 1
    Then I select element: "TL - TÜRK LİRASI" under currency code select at index 1
    And I wait save account button element 30 seconds at index 1
    When I click element: save account button at index 1
    And I wait record element 30 seconds at index 1
    When I click element: record at index 1
    Then I click element: save at index 2
    And I wait approval note element 30 seconds at index 1
    When I enter "TEST" text to approval note at index 1
    Then I click element: yes button at index 2
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 2
    And I click element: close button at index 2
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1

    #yeni tedarikçi talep onayı - 2Scenario:

    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page

    Then I enter "30080" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see buy page

    And I wait workflow management button element 30 seconds at index 1
    When I click element: workflow management button at index 1
    Then I see workflowManagement page
    And I wait jobs pending on my list button element 30 seconds at index 1
    When I click element: jobs pending on my list button at index 1

    Then I enter my reference: "reference number" text to reference number area at index 1
    When I click element: inquire button at index 1
    And I wait number one element 30 seconds at index 1
    When I click element: number one at index 1
    When I click element: yes button at index 2
    And I wait approve button element 30 seconds at index 1
    When I click element: approve button at index 1
    And I wait approval note element 30 seconds at index 1
    Then I enter "TEST" text to approval note at index 1
    And I wait yes button element 30 seconds at index 1
    When I click element: yes button at index 1
    Then I need to check area verify by warning check at index 1 contains "Tedarikçi Tanımlama/Güncelleme işlemi onaylandı."
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    And I wait page header element 30 seconds at index 1

