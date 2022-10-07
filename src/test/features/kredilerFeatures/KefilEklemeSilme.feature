Feature: Orion Finance Finco Test Scenarios - 008.KEFİL EKLEME VE SİLME KONTROLÜ

  #1.)Kefil Ekleme ve Silme: TC001

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

  @KefilEklemeSilme
  Scenario: KEFİL EKLEME VE SİLME: TC001

    #Kefil Ekleme ve Silme - 1Scenario:

    And I wait loan button credit element 30 seconds at index 1
    When I click element: loan button credit at index 1
    Then I see loan page
    And I wait application button element 30 seconds at index 1
    When I click element: application button at index 1
    And I wait credit application introduction button element 30 seconds at index 1
    When I click element: credit application introduction button at index 1
    Then I enter "11610" text to customer no-new application text area at index 1
    And I wait magnifying glass button element 30 seconds at index 1
    Then I click element: magnifying glass button at index 1
    Then I need to just wait
    Then I click element: choose customer at index 1
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
