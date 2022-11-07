Feature: Orion Finance Finco Test Scenarios - GİDER ÖDEME TALEP

  #1.)GİDER ÖDEME TALEP OLUŞTURMA
  #2.)GİDER ÖDEME TALEP ONAYI

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "19007" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see buy page

  @GiderOdeme
  Scenario: GİDER ÖDEME LOGİN:

    #Gider odeme talep oluşturma - 1Scenario:

    And I wait purchase and expense button element 30 seconds at index 1
    When I click element: purchase and expense button at index 1
    Then I click element: operational operations button at index 1
    Then I click element: expense payment at index 1
    And I wait page header element 30 seconds at index 1

    And I wait payment type element 20 seconds at index 1
    When I click element: payment type at index 1
    And I select element: "MASRAF ÖDEME" under payment type at index 1
    And I wait payment type search element 30 seconds at index 1
    When I click element: payment type search at index 1
    And I need to just wait
    Then I click element: choose second line at index 1
    And I wait page header element 30 seconds at index 1
    Then I get the information by copying the value from: process date area at index 1
    Then I copy the information by copying the value to: value date area at index 1
    And I wait description area element 30 seconds at index 1
    When I enter "test" text to description area at index 1
    And I wait bank name search element 30 seconds at index 2
    When I click element: bank name search at index 2
    And I click element: bank name search button at index 5
    And I click element: choose fifth line at index 1
    And I wait page header element 30 seconds at index 1
    When I click element: save button second at index 1
    And I wait note text element 30 seconds at index 1
    When I click element: note text at index 1
    Then I enter "test onay" text to note text at index 1
    And I click element: yes button at index 2
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 2
    And I click element: close button at index 2
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1

    #Gider odeme talep onayı - 2Scenario:

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
    And I wait yes button element 30 seconds at index 2
    When I click element: yes button at index 2
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1
    And I click element: yes button at index 2
    And I wait login username element 30 seconds at index 1
