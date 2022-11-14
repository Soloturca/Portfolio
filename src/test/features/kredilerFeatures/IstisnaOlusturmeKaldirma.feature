Feature: Orion Finance Finco Test Scenarios - 016.İSTİSNA OLUŞTURMA VE KALDIRMA İŞLEMİ

  #1.)Ön Değerlendirmeden RET alma: TC001
  #2.)İstisna Oluşturma: TC002
  #3.)İstisna Kaldırma: TC003

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

  @IstisnaOlusturmaVeKaldirma
  Scenario: Ön Değerlendirmeden RET alma: TC001

    #Ön Değerlendirmeden RET alma - 1Scenario:

    And I wait loan button credit element 30 seconds at index 1
    When I click element: loan button credit at index 1
    Then I see loan page
    And I wait application button element 30 seconds at index 1
    When I click element: application button at index 1
    And I wait credit application introduction button element 30 seconds at index 1
    When I click element: credit application introduction button at index 1
    Then I enter "12186" text to customer no-new application text area at index 1
    And I wait magnifying glass button element 30 seconds at index 1
    Then I click element: magnifying glass button at index 1
    Then I need to just wait
    Then I click element: choose customer at index 1
    And I wait trade registration no text area element 30 seconds at index 1
    Then I enter "5737" text to trade registration no text area at index 1
    And I wait goOn button element 30 seconds at index 1
    Then I click element: goOn button at index 1
    Then I need to just wait
    Then I need to check area verify by transaction result message at index 1 contains "Ön değerlendirme sonucu olumsuz olduğu için devam edemezsiniz"

  @IstisnaOlusturmaVeKaldirma
  Scenario: İstisna Oluşturma: TC002

    #İstisna Oluşturma - 2Scenario:

    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page

    Then I enter "30090" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

    And I wait credit element 30 seconds at index 1
    When I click element: credit at index 1
    And I wait application button element 30 seconds at index 1
    And I click element: application button at index 1
    And I click element: exception handling at index 1
    Then I see loan page
    And I wait customer no-new application text area element 30 seconds at index 1
    Then I enter "12186" text to customer no-new application text area at index 1
    Then I click element: magnifying glass v2 button at index 1
    And I wait row pick input element 30 seconds at index 1
    And I click element: row pick input at index 1
    Then I go to down of the site
    And I click element: create exception at index 1
    And I wait note element 15 seconds at index 1
    And I click element: note at index 1
    Then I enter "İstisna Oluşturma Onayi Ltf." text to note at index 1
    Then I click element: yes button at index 1

    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    Then I see home page

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
    And I click element: yes button at index 1

  @IstisnaOlusturmaVeKaldirma
  Scenario: İstisna Oluşturma: TC003

    #İstisna Kaldırma - 3Scenario:

    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page

    Then I enter "30090" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

    And I wait credit element 30 seconds at index 1
    When I click element: credit at index 1
    And I wait application button element 30 seconds at index 1
    And I click element: application button at index 1
    And I click element: exception handling at index 1
    Then I see loan page

    Then I click element: current exception at index 1
    And I wait customer no-new application text area element 30 seconds at index 1
    Then I enter "12186" text to customer no-new application text area at index 1
    Then I click element: magnifying glass v2 button at index 1
    And I wait row pick input element 30 seconds at index 1
    And I click element: row pick input at index 1
    Then I go to down of the site
    And I click element: remove exception at index 1
    And I wait note element 15 seconds at index 1
    And I click element: note at index 1
    Then I enter "İstisna Kaldırma Onayi Ltf." text to note at index 1
    Then I click element: yes button at index 1

    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    Then I see home page

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
    And I click element: yes button at index 1

