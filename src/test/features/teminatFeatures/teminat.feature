Feature: Orion Finance Finco Test Scenarios - Teminat
  #  This feature includes these steps:
#1.) Teminat Oluşturma: TC001
#2.) Var olan teminatın güncellenmesi: TC002
#3.) Teminatın pasife alınması: TC003
#4.) Var olan teminatın gözlemlenmesi: TC004
#5.) Var olan teminatın bir krediye bağlanması: TC005
#6.) Var olan kredinin teminatının çözülmesi: TC006



  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30070" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page
    


  @teminat
  Scenario: Teminat Oluşturma: TC001 -
    Then I see assurance page
    And I wait assurance transaction button element 30 seconds at index 1
    When I click element: assurance transaction button at index 1
    And I wait assurance management button element 30 seconds at index 1
    When I click element: assurance management button at index 1
    And I wait assurance switch button element 10 seconds at index 1
    When I click element: assurance switch button at index 1
    When I select element: "TEMİNAT MEKTUBU" under assurance type selection at index 1
    Then I enter "12228" text to customer no text area at index 1
    And I click element: customer search button at index 1
    And I click element: customer select row at index 1
    And I click element: continue button at index 1
    Then I enter "766" text to letter no area at index 1
    When I select element: "TÜRKİYE GARANTİ BANKASI A.Ş." under letter of bank selection at index 1
    Then I click element: calender button at index 1
    When I select element: "AYDIN - 15" under letter of bank branch selection at index 1
    Then I click element: detail information continue button at index 1
    And I enter "10000" text to assurance amount area at index 1
    When I select element: "TL - TÜRK LİRASI" under currency type selection at index 1
    Then I click element: assurance amount continue button at index 1
    Then I upload the file for customer "evrak.jpg" using the: upload to excel button at index 1
    Then I click element: save to excel button at index 1
    And I click element: click to explanation at index 1
    And I wait upload to excel button element 10 seconds at index 1
    Then I upload the file for customer "evrak.jpg" using the: upload to excel button at index 1
    Then I click element: save to excel button at index 1
    Then I click element: assurance amount continue button at index 1
    Then I enter "teminat test" text to comment area at index 1
    And I click element: add button at index 1
    Then I click element: assurance amount continue button at index 1
    And I click element: save button at index 1
    Then I enter "automation teminat test" text to note area at index 1
    And I click element: yes button at index 1
    And Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "19006" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page
    And I click element: workflow management button at index 1
    Then I see workflowManagement page
    Then I click element: jobs pending on my list button at index 1
    And I click element: inquire button at index 1
    Then I click element: work select row at index 1
    Then I click element: yes button at index 1
    And I click element: approve button at index 1
    And I click element: yes button at index 1


  @teminat
  Scenario: Var olan teminatın güncellenmesi: TC002 -
    Then I see assurance page
    And I wait assurance transaction button element 30 seconds at index 1
    When I click element: assurance transaction button at index 1
    And I wait assurance management button element 30 seconds at index 1
    When I click element: assurance management button at index 1
    When I select element: "TEMİNAT MEKTUBU" under assurance type selection at index 1
    Then I enter "12228" text to customer no text area at index 1
    And I click element: customer search button at index 1
    And I click element: customer select row at index 1
    And I click element: assurance search button at index 1
    Then I click element: assurance select button at index 1
    And I click element: continue button at index 1
    And I click element: assurance amount tab at index 1
    And I clear text to assurance amount area at index 1
    And I enter "10500" text to assurance amount area at index 1
    And I click element: save tab at index 1
    And I click element: save button at index 1
    Then I enter "automation teminat test" text to note area at index 1
    And I click element: yes button at index 1
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "19006" text to username text area at index 1
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

  @teminat
  Scenario: Teminatın pasife alınması: TC003 -
    Then I see assurance page
    And I wait assurance transaction button element 30 seconds at index 1
    When I click element: assurance transaction button at index 1
    And I wait assurance management button element 30 seconds at index 1
    When I click element: assurance management button at index 1
    When I select element: "TEMİNAT MEKTUBU" under assurance type selection at index 1
    Then I enter "12228" text to customer no text area at index 1
    And I click element: customer search button at index 1
    And I click element: customer select row at index 1
    And I click element: assurance search button at index 1
    Then I click element: assurance select button at index 1
    And I click element: make a passive button at index 1
    Then I enter "automation teminat test" text to note area at index 1
    And I click element: yes button at index 1
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "19006" text to username text area at index 1
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


  @teminat
  Scenario: Var olan teminatın gözlemlenmesi: TC004 -
    Then I see assurance page
    And I wait assurance transaction button element 30 seconds at index 1
    When I click element: assurance transaction button at index 1
    And I wait assurance monitoring element 30 seconds at index 1
    When I click element: assurance monitoring at index 1
    Then I enter "12228" text to assurance monitoring customer code area at index 1
    And I click element: assurance monitoring customer search button at index 1
    And I click element: assurance monitoring customer select row at index 1
    And I click element: assurance search button at index 1
    Then I click element: assurance monitoring assurance select row at index 1

  @teminat
  Scenario: Var olan teminatın bir krediye bağlanması: TC005 -
    Then I see assurance page
    And I wait assurance transaction button element 30 seconds at index 1
    When I click element: assurance transaction button at index 1
    And I wait assurance and credit relationship management element 30 seconds at index 1
    When I click element: assurance and credit relationship management at index 1
    Then I enter "2022041200001" text to credit no text area at index 1
    Then I click element: assurance monitoring customer search button at index 1
    When I select element: "TAKİPTE" under disbursement status at index 1
    And I click element: credit date area at index 1
    And I clear text to credit date area at index 1
    Then I enter "01032022" text to credit date area at index 1
    And I click element: credit query button at index 1
    When I click element: credit select row at index 1
    And I click element: assurance select check box at index 1
    Then I click element: bind collateral button at index 1
    And I click element: bind collateral save button at index 1
    And I click element: yes button at index 1
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "19006" text to username text area at index 1
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

  @teminat
  Scenario: Var olan kredinin teminatının çözülmesi: TC006 -
    Then I see assurance page
    And I wait assurance transaction button element 30 seconds at index 1
    When I click element: assurance transaction button at index 1
    And I wait assurance and credit relationship management element 30 seconds at index 1
    When I click element: assurance and credit relationship management at index 1
    Then I enter "2022081200002" text to credit no text area at index 1
    Then I click element: assurance monitoring customer search button at index 1
    When I select element: "AKTİF" under disbursement status at index 1
    And I click element: credit date area at index 1
    And I clear text to credit date area at index 1
    Then I enter "12082022" text to credit date area at index 1
    And I click element: credit query button at index 1
    When I click element: credit select row at index 1
    And I click element: choose collateral letter at index 1
    And I click element: choose binded collateral at index 1
    And I click element: transfer amount text area at index 1
    Then I clear text to transfer amount text area at index 1
    Then I enter "100" text to transfer amount text area at index 1
    Then I click element: release collateral button at index 1
    And I click element: bind collateral save button at index 1
    And I click element: yes button at index 1
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "19006" text to username text area at index 1
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
