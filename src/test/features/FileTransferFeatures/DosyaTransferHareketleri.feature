Feature: Orion Finance Finco Test Scenarios - DOSYA TRANSFER HAREKETLERİ

  #1.)DOSYA TRANSFER HARERKETLERİ


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

  @DosyaTransferHareketleri
  Scenario: Dosya Transfer Hareketleri:

    #Dosya transfer hareketleri- 1Scenario:

    When I click element: file transfer at index 1
    Then I click element: file transfer transactions at index 1
    And I wait page header element 30 seconds at index 1
    Then I clear text to transaction date at index 1
    Then I print the date from two year ago: transaction date at index 1
    And I wait transaction code element 30 seconds at index 1
    When I click element: transaction code at index 1
    Then I click element: search button at index 1
    And I wait eighth code element 30 seconds at index 1
    Then I click element: eighth code at index 1
    Then I click element: button query at index 1
    And I wait results element 30 seconds at index 1
    Then I click element: close system button at index 1
    Then I click element: yes button at index 1
    And I wait login user element 30 seconds at index 1

