Feature: Orion Finance Finco Test Scenarios - KEFİL EKLEME VE SİLME KONTROLÜ



  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URLGKTİBaşvuru.feature
    Then I see login page
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

  @KefilEklemeSilme
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