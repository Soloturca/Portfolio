Feature: Orion Finance Finco Test Scenarios / Customer Create - MUSTERI YONETIMI
#  This feature includes these steps:
#1.) Müşteri Yönetimi -  Yeni GERÇEK KİŞİ TACİR müşteri oluşturma
#2.) Müşteri Yönetimi -  Yeni KURUMSAL müşteri oluşturma
#3.) Müşteri Yönetimi -  Yeni BİREYSEL müşteri oluşturma

  @Finco
  Scenario Outline: Müsteri Yonetimi: Yeni - GERÇEK KİŞİ TACİR müşteri oluşturma

    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "<username>" text to username text area at index 1
    Then I enter "<password>" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page
    And I click element: customer transactions at index 1
    And I click element: customer management at index 1
    Then I see customerTransactions page

    #Müşteri yönetimi
    #Giriş
    And I need to get VKN from Excel file
    And I enter the VKN to VKN text area at index 1
    Then I wait search button element 5 seconds at index 1
    And I click element: search button at index 1
    # Yeni bir müşterimi olduğu kontrol edilecek
    Then I wait next button for contacts element 5 seconds at index 1
    Then I click element: next button for contacts at index 1

    # Genel Bilgiler
    Then I wait next button for contacts element 5 seconds at index 3
    Then I click element: next button for contacts at index 3

    # İletişim Bilgileri
    Then I wait next button for contacts element 5 seconds at index 3
    Then I click element: next button for contacts at index 3

    And I wait telephone information area element 30 seconds at index 1
    When I click element: telephone information area at index 1
    And I wait telephone new button element 30 seconds at index 1
    When I click element: telephone new button at index 1
    When I select element: "CEP TELEFONU" under telephone type selection at index 2
    Then I enter a telephone number to telephone number text area at index 1
    When I click element: priority telephone button at index 1
    When I click element: telephone add button at index 1
    Then I need to just wait
    And I wait telephone warning close button element 30 seconds at index 1

    Then I wait sms code tag element 5 seconds at index 1
    And I get SMS Code Tag from the item value: sms code tag
    And I need to just wait

    #Fake SMTP Page
    Then Open https://fake-smtp-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL in a new tab
    And I see fakeSmtpServer page
    Then I click element: sms log card at index 1
    And I get SMS code from the item value: sms content
    And I need to just wait

    #Sms Code verification
    Then I switch to main window
    And I see customerTransactions page
    And I click element: telephone warning close button at index 1

    #SMS Code Workflow
    Then I enter Sms Code to OTP text area at index 1
    And I press key "TAB" to OTP text area at index 1
    Then I click element: reason add button at index 1
    # Success mesaj kontrol edilecek
    And I wait close button element 30 seconds at index 1
    And I click element: close button at index 1
    Then I click element: next button for contacts at index 3
    And I need to just wait

    #Detay Bilgiler
    When I select element: "ASKER" under job type selection area at index 1
    Then I click element: KVKK information area at index 1
    And I click element: yes permission button at index 1
    And I click element: yes permission button at index 2

    Then I click element: permission marketing area at index 1
    And I click element: yes permission button at index 3
    And I click element: permission channel for call center at index 1
    And I click element: permission channel for email at index 1
    And I click element: permission channel for sms at index 1
    And I click element: next button for contacts at index 3

    # Uploading
    Then I wait upload document button element 5 seconds at index 1
    Then I click remove button if document name area exists at index 1
    And I upload the pdf file using the: upload document button at index 1
    Then I click remove button if document name area exists at index 2
    And I upload the pdf file using the: upload document button at index 2
    Then I click remove button if document name area exists at index 3
    And I upload the pdf file using the: upload document button at index 3
    Then I click remove button if document name area exists at index 4
    And I upload the pdf file using the: upload document button at index 4
    Then I click remove button if document name area exists at index 5
    And I upload the pdf file using the: upload document button at index 5

    Then I click element: next button for contacts at index 3

    #Kaydetme işlemi
    #Then I wait save button for save section element 5 seconds at index 1
    #And I click element: save button for save section at index 1

    #Then I wait close button element 5 seconds at index 1
    #And I click element: close button at index 1

    Then I need to set VKN as used into Excel
    And I need to just wait

    Examples:
      | username    | password     |
      | 4000        | 1            |

  #@Test
  Scenario: Testing for get VKN from excel file
    When I need to get VKN from Excel file
    Then I need to set VKN as used into Excel
    And I need to just wait