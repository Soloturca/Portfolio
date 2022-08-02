Feature: Orion Finance Finco Test Scenarios - TEMİNAT MEKTUBU EKLEME SİLME KONTROLÜ



  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URLGKTİBaşvuru.feature
    Then I see login page
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

  @GKTİBaşvuru
  Scenario: GKTİ Başvuru: TC001 -
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
    Then I click element: create payment plan button at index 2
    And I wait pop up save button element 30 seconds at index 1
    Then I click element: pop up save button at index 1
    And I wait save button element 30 seconds at index 1
    Then I click element: save button at index 1

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

