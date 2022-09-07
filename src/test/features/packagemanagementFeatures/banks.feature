Feature: Orion Finance Finco Test Scenarios - Bankalar ve banka şubeleri
  #  This feature includes these steps:
#1.) Yeni banka şubesi oluşturma: TC001
#2.) Var olan banka şubesinin güncellenmesi: TC002
#3.) Var olan banka şubesinin silinmesi: TC003





  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30010" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page
    

  @bank
  Scenario: Banka Subesi Olusturma: TC001 -
    Then I see banks page
    And I wait package management element 30 seconds at index 1
    When I click element: package management at index 1
    And I wait bank branch management element 30 seconds at index 1
    When I click element: bank branch management at index 1
    Then I select element: "TOLGA TEST" under bank name area for bank branch at index 1
    And I wait branch name area element 30 seconds at index 1
    And I enter "Automation Test Branch" text to branch name area at index 1
    And I wait branch code area element 30 seconds at index 1
    And I enter "435431" text to branch code area at index 1
    And I click element: save button for create new branch at index 1
    And I enter "Automation Test creating new branch" text to approve note area at index 1
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
    And I click element: approve button at index 1
    And I click element: yes button at index 1

  @bank
  Scenario: Banka Subesi Güncelleme: TC002 -
    Then I see banks page
    And I wait package management element 30 seconds at index 1
    When I click element: package management at index 1
    And I wait bank branch management element 30 seconds at index 1
    When I click element: bank branch management at index 1
    When I click element: existing button at index 1
    And I wait bank name area for bank branch element 30 seconds at index 1
    Then I select element: "TOLGA TEST" under bank name area for bank branch at index 1
    When I click element: query button at index 1
    When I click element: bank branch select at index 1
    And I wait branch name area element 30 seconds at index 1
    And I clear text to branch name area at index 1
    And I enter "Automation Test Branch updated" text to branch name area at index 1
    And I wait branch code area element 30 seconds at index 1
    And I clear text to branch code area at index 1
    And I enter "435432" text to branch code area at index 1
    And I click element: save button for update at index 1
    And I enter "Automation Test updating branch" text to approve note area at index 1
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
    And I click element: approve button at index 1
    And I click element: yes button at index 1

  @bank
  Scenario: Banka Subesi Silme: TC003 -
    Then I see banks page
    And I wait package management element 30 seconds at index 1
    When I click element: package management at index 1
    And I wait bank branch management element 30 seconds at index 1
    When I click element: bank branch management at index 1
    When I click element: existing button at index 1
    And I wait bank name area for bank branch element 30 seconds at index 1
    Then I select element: "TOLGA TEST" under bank name area for bank branch at index 1
    When I click element: query button at index 1
    When I click element: bank branch select at index 1
    And I click element: branch delete button at index 1
    And I enter "Automation Test updating branch" text to approve note area at index 1
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
    And I click element: approve button at index 1
    And I click element: yes button at index 1
