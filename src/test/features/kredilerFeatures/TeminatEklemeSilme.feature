Feature: Orion Finance Finco Test Scenarios - 009.TEMİNAT MEKTUBU EKLEME VE SİLME KONTROLÜ

  #1.)Başvuru Oluşturma: TC001
  #2.)Teminat Ekleme ve Silme: TC002
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

  @TeminatEklemeSilme
  Scenario: Başvuru Oluşturma: TC001

    #Başvuru Oluşturma - 1Scenario:

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
    Then I click element: parties row at index 1
    Then I click element: add product button at index 2
    And I wait magnifying glass button element 30 seconds at index 3
    Then I click element: magnifying glass button at index 3
    Then I enter "11613" text to add a guarantor customer at index 1
    And I wait inquire button two element 30 seconds at index 1
    Then I click element: inquire button two at index 1
    And I wait choose customer element 30 seconds at index 1
    Then I click element: choose customer at index 1
    And I wait add product button element 30 seconds at index 1
    Then I click element: add product button at index 1
    And I wait choose a side element 30 seconds at index 1
    Then I click element: choose a side at index 1
    Then I click element: delete guarantor at index 1
    And I wait yes button element 30 seconds at index 1
    Then I click element: yes button at index 1
    And I wait goOn button element 30 seconds at index 1
    Then I click element: goOn button at index 1

    When I need to just wait
    Then I need to preliminary assessment verify by transaction result at index 1
    Then I click element: close button at index 1
    And I wait product name selection element 30 seconds at index 1
    And I select element: "MANAGED SERVİCES - YILLIK" under product name selection at index 1
    Then I enter "347" text to pricing selection at index 1
    Then I click element: application calender button at index 1
    Then I enter "4" text to maturity text area at index 1
    Then I enter "1000" text to invoice amount/product quantity text area at index 1
    Then I enter "1" text to invoice amount/product quantity piece text area at index 1
    Then I enter "1000" text to credit amount text area at index 1
    Then I click element: add product button at index 3
    Then I click element: close button at index 1
    And I click element: select button at index 1
    Then I click element: create payment plan button at index 1
    And I click element: go on button at index 1
    And I select element: "MART" under payment year selection at index 1
    And I wait create payment plan button element 30 seconds at index 2
    Then I click element: create payment plan button at index 2
    And I wait pop up save button element 30 seconds at index 1
    Then I click element: pop up save button at index 1
    And I wait save button element 30 seconds at index 1
    Then I click element: save button at index 1

  @TeminatEklemeSilme
  Scenario: Teminat Ekleme ve Silme: TC002

    #Teminat Ekleme ve Silme - 2Scenario:

    And I wait continue to Finco Observation button element 30 seconds at index 1
    Then I click element: continue to Finco Observation button at index 1
    And I select element: "TEMINAT MEKTUBU" under collateral type selection at index 1
    And I wait collateral margin ratio text area element 30 seconds at index 1
    Then I enter "10" text to collateral margin ratio text area at index 1
    Then I click element: add collateral button at index 1
    And I wait success button element 30 seconds at index 1
    Then I click element: success button at index 1
    Then I click element: letter of guarantee selection at index 1
    And I wait deletion of letter of guarantee element 30 seconds at index 1
    Then I click element: deletion of letter of guarantee at index 1

    And I wait continue to Financial Information button element 30 seconds at index 1
    Then I click element: continue to Financial Information button at index 1

  @TeminatEklemeSilme
  Scenario: Kredi İptali: TC003

    #Kredi İptali - 3Scenario:

    And I wait loan button credit element 30 seconds at index 1
    When I click element: loan button credit at index 1
    Then I see loan page
    And I wait application button element 30 seconds at index 1
    When I click element: application button at index 1
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

  @TeminatEklemeSilme
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
