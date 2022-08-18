Feature: Orion Finance Finco Test Scenarios - GKTİ MEVCUT BAŞVURU KONTROLÜ

  #1.)GKTİ Müşteri Yeni Başvuru Giriş
  #2.)GKTİ Müşteri Mevcut Başvuru Giriş
  #3.)Başvuru İptal

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

  @GKTİMevcutBaşvuru
  Scenario: GKTİ MEVCUT BAŞVURU:

    #GKTİ Müşteri Yeni Başvuru Giriş - 1Scenario:

    And I wait loan button credit element 30 seconds at index 1
    When I click element: loan button credit at index 1
    Then I see loan page
    And I wait application button element 30 seconds at index 1
    When I click element: application button at index 1
    And I wait credit application introduction button element 30 seconds at index 1
    When I click element: credit application introduction button at index 1
    Then I enter "11876" text to customer no-new application text area at index 1
    And I wait magnifying glass button element 30 seconds at index 1
    Then I click element: magnifying glass button at index 1
    Then I need to just wait
    Then I click element: choose customer at index 1
    And I wait trade registration no text area element 30 seconds at index 1
    Then I enter "7611" text to trade registration no text area at index 1
    Then I click element: goOn button at index 1

    When I need to just wait
    Then I need to preliminary assessment verify by transaction result at index 1
    Then I click element: close button at index 1
    Then I see home page

    #GKTİ Müşteri Mevcut Başvuru Giriş - 2Scenario:

    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page
    And I wait loan button credit element 30 seconds at index 1
    When I click element: loan button credit at index 1
    Then I see loan page
    And I wait application button element 30 seconds at index 1
    When I click element: application button at index 1
    And I wait credit application introduction button element 30 seconds at index 1
    When I click element: credit application introduction button at index 1
    And I wait current application element 30 seconds at index 1
    Then I click element: current application at index 1
    Then I click element: closeview at index 2
    And I wait credit application observation and report customer no button element 30 seconds at index 1
    Then I enter "11876" text to credit application observation and report customer no button at index 1
    Then I click element: search button at index 8
    And I wait choose credit element 30 seconds at index 1
    Then I click element: choose credit at index 1
    Then I click element: goOn button at index 1

    When I need to just wait
    Then I need to preliminary assessment verify by transaction result at index 1
    Then I click element: close button at index 1

    #Başvuru İptal

    And I wait application cancel button element 30 seconds at index 1
    When I click element: application cancel button at index 1
    And I wait pricing observation element 30 seconds at index 1
    Then I need to application cancel verify by pricing observation at index 1
    Then I enter "11876" text to credit application observation and report customer no button at index 1
    And I wait credit application observation and report search and list button element 30 seconds at index 1
    When I click element: credit application observation and report search and list button at index 1
    And I click element: credit application observation and report transaction reference number text area at index 1
    When I click element: cancel the application button at index 1
    When I select element: "MÜŞTERİ VAZGEÇTİ" under reason for cancellation selection at index 1
    Then I enter "Kredi Iptali Ltf." text to transaction description text area at index 1
    And I click element: complete the transaction at index 1
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    Then I see home page

    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page

    Then I enter "30030" text to username text area at index 1
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

    Then I see loan page
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    Then I see home page

    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page

    Then I enter "30070" text to username text area at index 1
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
    Then I see loan page

    When I need to just wait
    Then I need to application cancellation has been approved verify by application cancellation message at index 1
