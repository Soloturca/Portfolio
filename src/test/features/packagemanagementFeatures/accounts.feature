Feature: Orion Finance Finco Test Scenarios - Hesap yönetimi
  #  This feature includes these steps:
#1.) Maaş hesabı oluşturma: TC001
#2.) Tahsilat hesabı oluşturma: TC002
#3.) Kullandırım hesabı oluşturma: TC003





  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30010" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1

  @account
  Scenario: Maaş hesabı oluşturma: TC001 -
    Then I see accounts page
    And I wait package management element 30 seconds at index 1
    When I click element: package management at index 1
    And I wait account management element 30 seconds at index 1
    When I click element: account management at index 1
    And I select element: "TOLGA24 BANK" under bank name at index 1
    And I select element: "4123 - tolga deneme" under bank branch name at index 1
    Then I click element: continue button at index 1
    And I enter "6294100" text to account no at index 1
    And I enter "62 0006 2000 3550 0006 2941 00" text to iban no at index 1
    And I select element: "TL - TÜRK LİRASI" under currency code at index 1
    And I select element: "SERBEST HESAP" under sub account type at index 1
    And I select element: "MAAS" under account purpose at index 1
    And I wait information tab element 20 seconds at index 1
    And I click element: information tab at index 1
    And I enter "automation test" text to contact person at index 1
    And I enter "5387201835" text to tel no area at index 1
    And I enter "tesstt@testeer.com" text to email area at index 1
    And I select element: "ADANA" under city area at index 1
    And I enter "test" text to adress area at index 1
    Then I click element: save tab at index 1
    And I click element: save button at index 1
    And I see banks page
    And I enter "Automation Test creating new account" text to approve note area at index 1
    And I click element: yes button at index 1
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30080" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page
    And I click element: workflow management button at index 1
    Then I see workflowManagement page
    Then I click element: jobs pending on my list button at index 1
    And I wait reference number area element 30 seconds at index 1
    Then I enter my reference: "reference number" text to reference number area at index 1
    And I wait inquire button element 30 seconds at index 1
    And I click element: inquire button at index 1
    Then I click element: work select row at index 1
    Then I click element: yes button at index 1
    And I click element: cancel button at index 1
    And I click element: yes button at index 1

  @account
  Scenario: Tahsilat hesabı oluşturma: TC002 -
    Then I see accounts page
    And I wait package management element 30 seconds at index 1
    When I click element: package management at index 1
    And I wait account management element 30 seconds at index 1
    When I click element: account management at index 1
    And I select element: "FIBABANKA A.S." under bank name at index 1
    And I select element: "UMRANIYE - 55" under bank branch name at index 1
    Then I click element: continue button at index 1
    And I enter "6294100" text to account no at index 1
    And I enter "62 0006 2000 3550 0006 2941 00" text to iban no at index 1
    And I select element: "TL - TÜRK LİRASI" under currency code at index 1
    And I select element: "SERBEST HESAP" under sub account type at index 1
    And I select element: "TAHSILAT" under account purpose at index 1
    And I click element: information tab at index 1
    And I enter "automation test" text to contact person at index 1
    And I enter "5387201835" text to tel no area at index 1
    And I enter "tesstt@testeer.com" text to email area at index 1
    And I select element: "ADANA" under city area at index 1
    And I enter "test" text to adress area at index 1
    Then I click element: save tab at index 1
    And I click element: save button at index 1
    And I see banks page
    And I enter "Automation Test creating new account" text to approve note area at index 1
    And I click element: yes button at index 1
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30080" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page
    And I click element: workflow management button at index 1
    Then I see workflowManagement page
    Then I click element: jobs pending on my list button at index 1
    And I wait reference number area element 30 seconds at index 1
    Then I enter my reference: "reference number" text to reference number area at index 1
    And I wait inquire button element 30 seconds at index 1
    And I click element: inquire button at index 1
    Then I click element: work select row at index 1
    Then I click element: yes button at index 1
    And I click element: cancel button at index 1
    And I click element: yes button at index 1

  @account
  Scenario: Kullandırım hesabı oluşturma: TC003 -
    Then I see accounts page
    And I wait package management element 30 seconds at index 1
    When I click element: package management at index 1
    And I wait account management element 30 seconds at index 1
    When I click element: account management at index 1
    And I select element: "FIBABANKA A.S." under bank name at index 1
    And I select element: "UMRANIYE - 55" under bank branch name at index 1
    Then I click element: continue button at index 1
    And I enter "6294100" text to account no at index 1
    And I enter "62 0006 2000 3550 0006 2941 00" text to iban no at index 1
    And I select element: "TL - TÜRK LİRASI" under currency code at index 1
    And I select element: "SERBEST HESAP" under sub account type at index 1
    And I select element: "KULLANDIRIM" under account purpose at index 1
    And I click element: information tab at index 1
    And I enter "automation test" text to contact person at index 1
    And I enter "5387201835" text to tel no area at index 1
    And I enter "tesstt@testeer.com" text to email area at index 1
    And I select element: "ADANA" under city area at index 1
    And I enter "test" text to adress area at index 1
    Then I click element: save tab at index 1
    And I click element: save button at index 1
    And I see banks page
    And I enter "Automation Test creating new account" text to approve note area at index 1
    And I click element: yes button at index 1
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30080" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page
    And I click element: workflow management button at index 1
    Then I see workflowManagement page
    Then I click element: jobs pending on my list button at index 1
    And I wait reference number area element 30 seconds at index 1
    Then I enter my reference: "reference number" text to reference number area at index 1
    And I wait inquire button element 30 seconds at index 1
    And I click element: inquire button at index 1
    Then I click element: work select row at index 1
    Then I click element: yes button at index 1
    And I click element: cancel button at index 1
    And I click element: yes button at index 1

