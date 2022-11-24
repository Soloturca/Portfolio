Feature: Orion Finance Finco Test Scenarios - VERGİ ÖDEME TALEP

  #1.)VERGİ ÖDEME TALEP OLUŞTURMA
  #2.)VERGİ ÖDEME TALEP ONAYI

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "19007" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see buy page

  @VergiOdeme
  Scenario: VERGİ ÖDEME LOGİN:

    #Vergi Ödeme talep oluşturma - 1Scenario:

    And I wait purchase and expense button element 30 seconds at index 1
    When I click element: purchase and expense button at index 1
    Then I click element: operational operations button at index 1
    Then I need to just wait
    Then I click element: paying taxes at index 1
    And I wait page header element 30 seconds at index 1

    When I click element: new button at index 1
    Then I click element: declaration type at index 1
    Then I select element: "GEÇİCİ KURUMLAR VERGİSİ" under select declaration type at index 1
    And I wait bank name search element 30 seconds at index 2
    When I click element: bank name search at index 2
    Then I click element: customer no search button at index 1
    And I need to just wait
    Then I click element: row select at index 1
    And I wait description area element 30 seconds at index 1
    When I enter "test" text to description area at index 1
    And I wait stamp duty element 30 seconds at index 1
    When I click element: stamp duty at index 1
    Then I enter "2" text to stamp duty area at index 1
    Then I click element: temporary corporate tax at index 1
    Then I enter "1" text to temporary corporate tax area at index 1

    And I wait save element 30 seconds at index 1
    When I click element: save at index 1
    And I wait approval note element 30 seconds at index 1
    When I click element: approval note at index 1
    Then I enter "test onay" text to approval note at index 1
    And I click element: yes button at index 1
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    And I need to just wait
    Then I need to check area verify by page header at index 1 contains "Vergi Ödeme"
    When I click element: close system button at index 1
    Then I click element: yes button at index 1
    And I wait login username element 30 seconds at index 1

    #Vergi Ödeme talep onayı - 2Scenario:

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

    Then I need to just wait
    Then I click element: operation type at index 4
    Then I select element: "Vergi Ödeme" under select operation type at index 1
    And I wait inquire button element 30 seconds at index 1
    When I click element: inquire button at index 1
    And I wait number one element 30 seconds at index 1
    When I click element: number one at index 1
    When I click element: yes button at index 2

    And I wait approve button element 30 seconds at index 1
    When I click element: approve button at index 1
    And I wait yes button element 30 seconds at index 1
    When I click element: yes button at index 1
    Then I need to check area verify by warning check at index 1 contains "Vergi Ödemesi Tanımlama/Güncelleme işlemi onaylandı."
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    And I need to just wait
    Then I need to check area verify by page header at index 1 contains "Listemde Bekleyen İşler Listesi"
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1
    And I click element: yes button at index 2
    And I wait login username element 30 seconds at index 1
