Feature: Orion Finance Finco Test Scenarios - FTP SUNUCU TANIMLAMA

  #1.)FTP SUNUCU TANIMLAMA MODÜLÜNDE SUNUCU BAĞLANTI TEST EDİLMESİ YAPILDI


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

  @FTPSunucuTanimlama
  Scenario: FTP Sunucu Tanimlama:

    #FTP Sunucu Tanımlama Test- 1Scenario:

    When I click element: file transfer at index 1
    And I wait server identification element 30 seconds at index 1
    Then I click element: server identification at index 1
    And I wait server name element 30 seconds at index 1
    When I click element: server name at index 1
    Then I click element: server name search at index 1
    And I wait current row element 1 seconds at index 1
    Then I click element: current row at index 1
    And I wait test button element 30 seconds at index 1
    When I click element: test button at index 1
    Then I need to just wait
    Then I need to check area verify by body text at index 1 contains "Bağlantı başarılı."
    Then I click element: close button at index 1
    And I click element: close system button at index 1
    Then I click element: yes button at index 1
    And I wait login user element 30 seconds at index 1

