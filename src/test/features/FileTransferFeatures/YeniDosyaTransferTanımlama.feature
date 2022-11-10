Feature: Orion Finance Finco Test Scenarios - YENİ DOSYA TRANSFER TANIMLAMA

  #1.)YENİ DOSYA TRANSFER TANIMLAMA
  #2.)Yeni dosya transfer tanımlama talep onayı


  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    And I wait username text area element 30 seconds at index 1
    When I enter "19007" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see filetransfer page
    And I wait file transfer element 30 seconds at index 1

  @YeniDosyaTransferTanımlama
  Scenario: Yeni Dosya Transfer Tanımlama:

    #Yeni Dosya Transfet Tanımlama- 1Scenario:

    When I click element: file transfer at index 1
    Then I click element: file transfer identification at index 1
    Then I need to check area verify by page header at index 1 contains "Dosya Transfer Tanımlama"

    When I click element: new button at index 1
    Then I click element: transfer name at index 1
    Then I enter "otomasyon_test" text to transfer name area at index 1
    And I wait transfer description element 30 seconds at index 1
    When I click element: transfer description at index 1
    Then I enter "otomasyon test transferi" text to transfer description area at index 1
    And I wait transfer direction element 30 seconds at index 1
    When I click element: transfer direction at index 1
    Then I select element: "İçeri" under select transfer direction at index 1
    And I wait mail list element 30 seconds at index 1
    When I click element: mail list at index 1
    Then I enter "test@vf.com.tr" text to mail list area at index 1
    And I wait transfer type element 30 seconds at index 1

    When I click element: transfer type at index 1
    Then I select element: "CSV" under select transfer type at index 1
    Then I click element: file name format at index 1
    Then I enter "otomasyon" text to file name format area at index 1
    Then I click element: file name format at index 2
    Then I select element: "ile başlayan" under select middle connector at index 1
    And I wait file name format element 30 seconds at index 3
    When I click element: file name format at index 3
    Then I select element: "DDMMYYYY" under select file date info at index 1
    Then I click element: file name format at index 4
    Then I select element: ".csv" under select file extension at index 1
    And I wait lokal button element 30 seconds at index 1

    When I click element: lokal button at index 1
    And I wait modul name element 30 seconds at index 1
    When I click element: modul name at index 1
    Then I select element: "filetransfer" under select modul name at index 1
    And I wait servis name element 30 seconds at index 1
    Then I click element: servis name at index 1
    Then I select element: "ForceMajorService" under select servis name at index 1
    Then I click element: goOn button at index 1
    Then I need to check area verify by page header two at index 1 contains "Dosya Genel Özellikleri"
    And I wait key element 30 seconds at index 1
    When I click element: key at index 1
    Then I select element: "delimiterChar" under select key at index 1
    And I wait value element 30 seconds at index 1
    When I click element: value at index 1
    Then I enter ";" text to value area at index 1
    Then I click element: add button at index 1
    And I wait goOn button element 30 seconds at index 2
    When I click element: goOn button at index 2
    Then I need to check area verify by page header three at index 1 contains "Alan Tanımlama"
    And I wait control type element 30 seconds at index 1
    When I click element: control type at index 1
    Then I select element: "Alan Başlığı" under select control type at index 1
    And I wait field title element 30 seconds at index 1
    When I click element: field title at index 1
    Then I enter "otomasyon baslangıc tarih" text to field title area at index 1
    And I wait for area element 30 seconds at index 1
    When I click element: for area at index 1
    Then I enter "OTOMASYON_BASLANGIC_TARIH" text to write for field at index 1
    And I wait date type element 30 seconds at index 1
    When I click element: date type at index 1
    Then I select element: "Date" under select date type at index 1
    And I wait date format element 30 seconds at index 1
    When I click element: date format at index 1
    Then I enter "DDMMYYYY" text to date format area at index 1
    And I wait fiel preferences element 30 seconds at index 1
    When I click element: fiel preferences at index 1
    Then I select element: "length" under select fiel preferences at index 1
    And I wait fiel preferences value element 30 seconds at index 1
    When I click element: fiel preferences value at index 1
    Then I enter "8" text to fiel preferences value area at index 1
    And I wait add button element 30 seconds at index 2
    When I click element: add button at index 2
    And I wait add button element 30 seconds at index 3
    When I click element: add button at index 3
    And I wait goOn button element 30 seconds at index 3
    When I click element: goOn button at index 3
    And I need to just wait
    Then I need to check area verify by page header four at index 1 contains "Transfer Ön İzleme"
    And I wait goOn button element 30 seconds at index 4
    When I click element: goOn button at index 4
    And I need to just wait
    Then I need to check area verify by save page at index 1 contains "Kaydet"
    Then I click element: yes button at index 1
    And I wait note text element 30 seconds at index 1
    When I click element: note text at index 1
    Then I enter "transfer test onayı" text to note text at index 1
    Then I click element: yes button at index 2
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I wait close button element 30 seconds at index 1
    And I click element: close button at index 1
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1


  #Yeni Dosya Transfer Tanımlama talep onayı - 2Scenario:

    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page

    Then I enter "30090" text to username text area at index 1
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
