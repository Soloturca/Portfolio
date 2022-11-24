Feature: Orion Finance Finco Test Scenarios - AVANS AÇMA TALEP

  #1.)AVANS AÇMA TALEP OLUŞTURMA
  #2.)AVANS AÇMA  TALEP ONAYI

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "19007" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see buy page

  @AvansAcma
  Scenario: AVANS AÇMA LOGİN:

    #Avans Açma talep oluşturma - 1Scenario:

    And I wait purchase and expense button element 30 seconds at index 1
    When I click element: purchase and expense button at index 1
    Then I click element: operational operations button at index 1
    Then I click element: making an advance at index 1
    And I wait page header element 30 seconds at index 1

    When I click element: advance type at index 1
    Then I select element: "TEDARİKÇİ AVANSI" under select advance type at index 1
    And I wait transaction date element 30 seconds at index 1
    Then I get the information by copying the value from: transaction date at index 1
    Then I copy the information by copying the value to: value date area at index 1
    And I wait search customer no element 30 seconds at index 1
    When I click element: search customer no at index 1
    Then I click element: role button at index 5
    And I wait select first line element 30 seconds at index 27
    When I click element: select first line at index 27
    And I wait transaction amount element 30 seconds at index 1
    When I click element: transaction amount at index 1
    Then I enter "2500" text to transaction amount area at index 1
    And I wait customer no search element 30 seconds at index 3
    When I click element: customer no search at index 3
    Then I click element: customer code at index 1
    Then I enter "12258" text to customer code area at index 1
    Then I click element: role button at index 4
    And I wait select first line element 30 seconds at index 13
    When I click element: select first line at index 13
    And I wait bank name element 30 seconds at index 1
    When I click element: bank name at index 1
    Then I select element: "TÜRKİYE GARANTİ BANKASI A.Ş." under select bank name at index 1
    And I wait branch name element 30 seconds at index 1
    When I click element: branch name at index 1
    Then I select element: "FETHİYE ÇARŞI - 1124" under select branch name at index 1
    And I wait currency name element 30 seconds at index 1
    When I click element: currency name at index 1
    Then I select element: "TL - TÜRK LİRASI" under select currency name at index 1
    And I wait iban name element 30 seconds at index 1
    When I click element: iban name at index 1
    Then I enter "03 0006 2001 1240 0003 4567 83" text to iban name area at index 1
    Then I click element: description name at index 1
    Then I enter "TEST" text to description name area at index 1

    And I wait data select element 30 seconds at index 1
    When I upload the file for customer "evrak.jpg" using the: data select at index 1
    Then I click element: data save at index 1
    Then I need to just wait
    Then I click element: data name explanation at index 1
    Then I need to just wait
    Then I see buy page
    Then I double click element: data name explanation at index 1
    And I press keyboard numpad area for the "text" key or if I am using "test" text value
    And I click "tab" keyboard button
    When I click element: save at index 1
    And I wait approval note element 30 seconds at index 1

    When I click element: approval note at index 1
    Then I enter "test avans onayı" text to approval note at index 1
    And I click element: yes button at index 1
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 2
    And I click element: close button at index 2
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1


    #Avans Açma talep onayı - 2Scenario:

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
    And I wait yes button element 30 seconds at index 1
    When I click element: yes button at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1
    And I click element: yes button at index 2
    And I wait login username element 30 seconds at index 1
