Feature: Orion Finance Finco Test Scenarios - Customers
  #  This feature includes these steps:
#1.) Bireysel Müşteri Oluşturma: TC001
#2.) GKT Müşteri Güncelleme: TC002
#3.) Bireysel Müşteri Güncelleme: TC003
#4.) Kurumsal Müşteri Güncelleme: TC004


  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see customer page
    
  @customer
  Scenario: Bireysel Müşteri Oluşturma: TC001 -
    When I click element: customer transaction at index 1
    And I wait customer management button element 30 seconds at index 1
    When I click element: customer management button at index 1
    And I wait tc no Area element 10 seconds at index 1
    And I enter "54232539340" text to tc no Area at index 1
    And I click element: customer search button at index 1
    And I click element: continue button at index 1
    And I click element: general information continue button at index 1
    Then I click element: phone information section at index 1
    Then I click element: new number button at index 1
    When I select element: "CEP TELEFONU" under phone type at index 2
    Then I enter "5435438756" text to phone number area at index 1
    And I click element: add number button at index 1
    And I click element: close button for verification popup at index 1
    When I select element: "DİĞER" under reason of why not verificated at index 1
    Then I enter "test" text to reason of why not verificated text area at index 1
    And I click element: add button for verification popup at index 1
    And I click element: priority number yes button at index 1
    And I click element: continue button for communication information section at index 1
    When I select element: "EMEKLİ" under occupation type at index 1
    When I select element: "ASKER" under job type at index 1
    And I click element: kvkk info section at index 1
    Then I click element: open consent yes at index 1
    And I click element: permission marketing section at index 1
    Then I click element: permission marketing yes at index 1
    Then I click element: call center at index 1
    And I click element: general information continue button at index 1
    Then I upload the file "aa.txt" using the: upload to excel button at index 1
    Then I upload the file "aa.txt" using the: upload to excel button at index 2
    Then I upload the file "aa.txt" using the: upload to excel button at index 3
    Then I upload the file "aa.txt" using the: upload to excel button at index 4
    And I click element: general information continue button at index 1

  @customer
  Scenario: GKT Müşteri Güncelleme: TC002 -
    When I click element: customer transaction at index 1
    And I wait customer management button element 30 seconds at index 1
    When I click element: customer management button at index 1
    And I wait customer code area element 10 seconds at index 1
    And I enter "11879" text to customer code area at index 1
    And I click element: customer search button at index 1
    And I click element: continue button at index 1
    And I click element: detail information section at index 1
    When I select element: "ASKER" under job type at index 1

  @customer
  Scenario: Bireysel Müşteri Güncelleme: TC003 -
    When I click element: customer transaction at index 1
    And I wait customer management button element 30 seconds at index 1
    When I click element: customer management button at index 1
    And I wait customer code area element 10 seconds at index 1
    And I enter "11790" text to customer code area at index 1
    And I click element: customer search button at index 1
    And I click element: continue button at index 1
    And I click element: detail information section at index 1
    When I select element: "ASKER" under job type at index 1

  @customer
  Scenario: Kurumsal Müşteri Güncelleme: TC004 -
    When I click element: customer transaction at index 1
    And I wait customer management button element 30 seconds at index 1
    When I click element: customer management button at index 1
    And I wait customer code area element 10 seconds at index 1
    And I enter "11887" text to customer code area at index 1
    And I click element: customer search button at index 1
    And I click element: continue button at index 1
    And I click element: detail information section at index 1
    And I click element: financial information section at index 1
    Then I clear text to number of employees area at index 1
    And I enter "4" text to number of employees area at index 1



