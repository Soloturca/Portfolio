Feature: Orion Finance Finco Test Scenarios - 2.EŞİT TAKSİTLİ FİYATLAMA OLUŞTURMA

  #1.)Eşit Taksitli Ödemeli Fiyatlama Oluşturma: TC001
  #2.)Fiyatlama Onayı: TC002

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30090" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

  @FiyatlamaEsit
  Scenario: FİYATLAMA EŞİT LOGİN: TC001

    #Eşit Taksitli Ödemeli Fiyatlama Oluşturma - 1Scenario:

    And I wait loan button element 30 seconds at index 1
    When I click element: loan button at index 1
    Then I see loan page
    When I click element: pricing button at index 1
    And I wait financial identification button element 30 seconds at index 1

    When I click element: financial identification button at index 1
    And I wait page header element 30 seconds at index 1

    When I enter "Grkn Fiyatlama" text to pricing name area at index 1
    Then I copy the information by copying the system time to: end date area at index 1

    When I select element: "EŞİT TAKSİTLİ ÖDEME" under payment type selection at index 1
    When I select element: "YILDA" under period type selection at index 1
    Then I enter "50" text to file charge at index 1
    And I select element: "ORAN" under file charge type at index 1
    And I enter "Otomasyon Testi Esit Taksitli Odemeli Fiyatlama" text to explanation area at index 1

    When I select element: "VODAFONE NET SUNU TİPLERİ" under product main group selection at index 1
    When I click element: product area at index 1
    And I wait select all button element 30 seconds at index 1
    And I click element: select all button at index 1
    When I click element: sales channel area at index 1
    And I wait select all button element 30 seconds at index 1
    When I click element: select all button at index 1
    When I click element: customer type area at index 1
    And I wait select all button element 30 seconds at index 1
    When I click element: select all button at index 1
    When I click element: application type area at index 1
    And I wait select all button element 30 seconds at index 1
    When I click element: select all button at index 1
    When I click element: kkdf exemption area at index 1
    And I wait select all button element 30 seconds at index 1
    When I click element: select all button at index 1

    Then I enter "1" text to maturity range first area at index 1
    Then I enter "50" text to maturity range second area at index 1
    Then I enter "1" text to amount range first area at index 1
    Then I enter "1000000" text to amount range second area at index 1
    Then I enter "20" text to contract margin area at index 1
    And I wait add price terms button element 30 seconds at index 1
    When I click element: add price terms button at index 1

    When I click element: pricing save button at index 1
    And I wait warning popup element 30 seconds at index 1
    And I click element: note at index 1
    Then I enter "Fiyatlama Onayi Ltf." text to note at index 1
    When I click element: yes button at index 1
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    Then I see home page

  @FiyatlamaEsit
  Scenario: Fiyatlama Onayı: TC002

    #Fiyatlama Onayı - 2Scenario:

    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page

    Then I enter "30050" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

    And I wait workflow management button element 30 seconds at index 1
    When I click element: workflow management button at index 1
    Then I see workflowManagement page
    And I wait jobs pending on my list button element 30 seconds at index 1
    When I click element: jobs pending on my list button at index 1

    Then I enter my reference: "reference number" text to reference number area at index 1
    When I click element: inquire button at index 1
    And I wait row button element 30 seconds at index 1
    When I click element: row button at index 1
    And I wait warning popup element 30 seconds at index 1
    When I click element: yes button at index 1

    And I wait approve button element 30 seconds at index 1
    When I click element: approve button at index 1
    And I wait warning popup element 30 seconds at index 1
    And I wait yes button element 30 seconds at index 1
    When I click element: yes button at index 1
    And I wait pricing no area element 30 seconds at index 1
    Then I get pricing information of: pricing no area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
