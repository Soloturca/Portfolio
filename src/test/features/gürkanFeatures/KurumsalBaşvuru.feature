Feature: Orion Finance Finco Test Scenarios - KURUMSAL BAŞVURU KONTROLÜ



  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

    @KurumsalBaşvuru
  Scenario: GKTİ Başvuru: TC001 -
    And I wait loan button credit element 30 seconds at index 1
    When I click element: loan button credit at index 1
    Then I see loan page
    And I wait application button element 30 seconds at index 1
    When I click element: application button at index 1
    And I wait credit application introduction button element 30 seconds at index 1
    When I click element: credit application introduction button at index 1
    Then I enter "11603" text to customer no-new application text area at index 1
    And I wait magnifying glass button element 30 seconds at index 1
    Then I click element: magnifying glass button at index 1
    Then I need to just wait
    Then I click element: choose customer at index 1
    And I wait trade registration no text area element 30 seconds at index 1
    Then I enter "7486-5" text to trade registration no text area at index 1
    Then I click element: goOn button at index 1

    When I need to just wait
    Then I need to preliminary assessment verify by transaction result at index 1
    Then I click element: close button at index 1
    And I wait product name selection element 30 seconds at index 1
    And I select element: "MANAGED SERVİCES - YILLIK" under product name selection at index 1
    Then I enter "347" text to pricing selection at index 1
    Then I click element: application calender button at index 1
    Then I enter "4" text to maturity text area at index 1
    Then I enter "10000" text to invoice amount/product quantity text area at index 1
    Then I enter "1" text to invoice amount/product quantity piece text area at index 1
    Then I enter "10000" text to credit amount text area at index 1
    Then I click element: add product button at index 3
    Then I click element: close button at index 1
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

    When I select element: "YMM" under 1st year signing officer selection at index 1
    Then I select element: "SMM" under 2nd year signing officer selection at index 1
    Then I select element: "AUDIT" under 3rd year signing officer selection at index 1
    Then I select element: "ONAYSIZ" under 4th year signing officer selection at index 1
    Then upload the file "2018.pdf" using the: upload1 button at index 1
      And I wait load 1st year button element 30 seconds at index 1
      Then I click element: load 1st year button at index 1

    And I wait continue to Documents button element 30 seconds at index 1
    Then I click element: continue to Documents button at index 1








