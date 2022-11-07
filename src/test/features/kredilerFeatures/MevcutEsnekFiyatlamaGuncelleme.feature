Feature: Orion Finance Finco Test Scenarios - 005.MEVCUT ESNEK FİYATLAMA GÜNCELLEME

    #1.)Mevcut Esnek Ödemeli Fiyatlama Güncelleme: TC001
    #2.)Fiyatlama Onayı: TC002

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30090" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

  @MevcutEsnekFiyatlama
  Scenario: Mevcut Esnek Ödemeli Fiyatlama Güncelleme : TC001

    #Mevcut Esnek Ödemeli Fiyatlama Güncelleme - 1Scenario:

    And I wait loan button element 30 seconds at index 1
    When I click element: loan button at index 1
    Then I see loan page
    When I click element: pricing button at index 1
    And I wait financial identification button element 30 seconds at index 1

    When I click element: financial identification button at index 1
    And I wait page header element 30 seconds at index 1

    When I click element: current pricing at index 1
    And I wait magnifying glass button element 30 seconds at index 1
    Then I click element: magnifying glass button at index 1
    Then I wait pricing code area element 30 seconds at index 2

    When I enter "345" text to pricing code area at index 2
    And I select element: "Pasif" under situation at index 2
    Then I click element: inquire button for financial observation at index 1
    Then I need to just wait
    Then I click element: row button at index 1
    And I wait start date area element 30 seconds at index 1
    Then I clear text to end date area at index 1
    Then I copy the information by copying the system time to: end date area at index 1

    When I click element: update button at index 1
    And I wait warning popup element 30 seconds at index 1
    And I click element: note at index 1
    Then I enter "Fiyatlama Onayi Ltf." text to note at index 1
    When I click element: yes button at index 1
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    Then I see home page

  @MevcutEsnekFiyatlama
  Scenario: Fiyatlama Onayı : TC002

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
    And I wait yes button element 30 seconds at index 2
    When I click element: yes button at index 2

    And I wait approve button element 30 seconds at index 1
    When I click element: approve button at index 1
    And I wait yes button element 30 seconds at index 1
    When I click element: yes button at index 1
    And I wait pricing no area element 30 seconds at index 1
    Then I get pricing information of: pricing no area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1