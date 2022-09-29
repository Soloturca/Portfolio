Feature: Orion Finance Finco Test Scenarios - 011.Tahsis Değerlendirme Aşamasından İade Başvuru ve İptali

  #1.)Başvuru Oluşturma: TC001
  #2.)Tahsisten Kredi İadesi: TC002
  #3.)Kredi İptali: TC003
  #4.)Kredi İptal Onayı: TC004

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

  @TahsisdenIadeBasvuruVeIptal
  Scenario: Başvuru Oluşturma: TC001

    #Başvuru Oluşturma - 1Scenario:

    And I wait loan button credit element 30 seconds at index 1
    When I click element: loan button credit at index 1
    Then I see loan page
    And I wait application button element 30 seconds at index 1
    When I click element: application button at index 1
    And I wait credit application introduction button element 30 seconds at index 1
    When I click element: credit application introduction button at index 1
    Then I enter "12216" text to customer no-new application text area at index 1
    And I wait magnifying glass button element 30 seconds at index 1
    Then I click element: magnifying glass button at index 1
    Then I need to just wait
    Then I click element: choose customer at index 1
    And I wait trade registration no individual text area element 30 seconds at index 1
    Then I enter "1" text to trade registration no individual text area at index 1
    Then I click element: goOn button at index 1

    When I need to just wait
    Then I need to preliminary assessment verify by transaction result at index 1
    And I wait close button element 30 seconds at index 1
    Then I click element: close button at index 1
    Then I go to top of the site
    And I wait product name selection element 10 seconds at index 1
    And I select element: "MANAGED SERVİCES - YILLIK" under product name selection at index 1
    Then I enter "347" text to pricing selection at index 1
    Then I click element: application calender button at index 1
    Then I enter "4" text to maturity text area at index 1
    Then I enter "1000" text to invoice amount/product quantity text area at index 1
    Then I enter "1" text to invoice amount/product quantity piece text area at index 1
    Then I enter "1000" text to credit amount text area at index 1
    Then I click element: add product button at index 3
    And I wait close button element 30 seconds at index 1
    Then I click element: close button at index 1
    And I wait select button element 30 seconds at index 1
    And I click element: select button at index 1
    Then I click element: create payment plan button at index 1
    And I click element: go on button at index 1
    And I select element: "MART" under payment year selection at index 1
    Then I click element: create payment plan button at index 2
    And I wait pop up save button element 30 seconds at index 1
    Then I click element: pop up save button at index 1
    And I wait save button element 30 seconds at index 1
    Then I click element: save button at index 1

    And I wait continue to Finco Observation button element 30 seconds at index 1
    Then I click element: continue to Finco Observation button at index 1

    And I wait continue to Financial Information button element 30 seconds at index 1
    Then I click element: continue to Financial Information button at index 1

    And I wait continue to Documents button element 30 seconds at index 1
    Then I click element: continue to Documents button at index 1
    And I wait upload to excel button element 30 seconds at index 1
    Then I upload the file for customer "evrak.jpg" using the: upload to excel button at index 1
    Then I upload the file for customer "evrak.jpg" using the: upload to excel button at index 2
    Then I upload the file for customer "evrak.jpg" using the: upload to excel button at index 3
    Then I upload the file for customer "evrak.jpg" using the: upload to excel button at index 4
    Then I upload the file for customer "evrak.jpg" using the: upload to excel button at index 5
    Then I upload the file for customer "evrak.jpg" using the: upload to excel button at index 6
    Then I upload the file for customer "evrak.jpg" using the: upload to excel button at index 7
    And I click element: continue to Summary button at index 1

    And I wait continue to the Registration button element 30 seconds at index 1
    When I click element: continue to the Registration button at index 1

    When I click element: sending to approval button at index 1
    And I wait transaction description text area element 30 seconds at index 1
    Then I enter "Otomasyon Basvuru" text to transaction description text area at index 1
    Then I click element: add comment button at index 1
    Then I enter "Otomasyon Basvuru" text to note text area at index 1
    And I wait approve the registration button element 30 seconds at index 1
    Then I click element: approve the registration button at index 1

    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    Then I see home page

  @TahsisdenIadeBasvuruVeIptal
  Scenario: Tahsisten Kredi İadesi: TC002

    #Tahsisten Kredi İadesi - 2Scenario:

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
    Then I see loan page

    When I need to just wait
    Then I need to credit application approval verify by credit application approval at index 1
    Then I click element: repeat button at index 1
    Then I click element: yes button at index 1
    Then I select element: "DİĞER" under comment reason button at index 1
    Then I enter "Basvuru Iade" text to transaction description text area at index 1
    Then I click element: add comment button at index 1
    And I wait note text area element 30 seconds at index 1
    Then I enter "Basvuru Iade" text to note text area at index 1
    And I wait approve the registration button element 30 seconds at index 1
    Then I click element: approve the registration button at index 1

    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    Then I see home page

  @TahsisdenIadeBasvuruVeIptal
  Scenario: Kredi İptali: TC003

    #Kredi İptali - 3Scenario:

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
    And I wait application cancel button element 30 seconds at index 1
    When I click element: application cancel button at index 1
    And I wait pricing observation element 30 seconds at index 1
    Then I need to application cancel verify by pricing observation at index 1
    Then I enter "12216" text to credit application observation and report customer no button at index 1
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

  @TahsisdenIadeBasvuruVeIptal
  Scenario: Kredi İptal Onayı: TC004

    #Kredi İptal Onayı - 4Scenario:

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
