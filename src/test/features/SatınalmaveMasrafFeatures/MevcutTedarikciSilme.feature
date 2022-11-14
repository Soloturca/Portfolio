Feature: Orion Finance Finco Test Scenarios - MEVCUT TEDARİKÇİ SİLME

  #1.)MEVCUT TEDARİKÇİ SİLME
  #2.)yMEVCUT TEDARİKÇİ ONAY

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    And I wait username text area element 30 seconds at index 1
    When I enter "19007" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see buy page

  @MevcutTedarikciSilme
  Scenario: MEVCUT TEDARİKÇİ SİLME LOGİN:

    #Mevcut tedarikçi silme - 1Scenario:

    And I wait purchase and expense button element 30 seconds at index 1
    When I click element: purchase and expense button at index 1
    Then I click element: managerial at index 1
    Then I need to just wait
    Then I click element: supplier identification at index 1
    And I wait page header element 30 seconds at index 1
    When I click element: current button at index 1
    And I wait bank name search element 30 seconds at index 1
    Then I click element: bank name search at index 1
    And I wait tck number dialog element 30 seconds at index 31
    When I click element: tck number dialog at index 31
    Then I enter "46333196904" text to tck number dialog area at index 1
    Then I click element: bank name search button at index 2
    And I wait select first line element 30 seconds at index 61
    When I click element: select first line at index 61
    And I wait record element 30 seconds at index 1
    When I click element: record at index 1
    Then I click element: delete button at index 1
    And I wait approval note element 30 seconds at index 1
    Then I enter "TEST" text to approval note at index 1
    Then I click element: yes button at index 2
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 2
    And I click element: close button at index 2
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1


    #mevcut tedarikçi silme onay - 2Scenario:

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
    Then I need to check area verify by warning check at index 1 contains "Tedarikçi silme işlemi onaylandı."
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    And I wait page header element 30 seconds at index 1

