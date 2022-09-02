Feature: Orion Finance Finco Test Scenarios - BİREYSEL MÜŞTERİ KREDİ BAŞVURU OLUŞTURAMAMA

  #1.)Bireysel Müşterinin Kredi Başvuru Oluşturamaması: TC001

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

  @BireyselKrediBasvuru

  Scenario: Bireysel Kredi Başvuru: TC001

    #Bireysel Müşteri Kredi Başvuru - 1Scenario:

    And I wait loan button credit element 30 seconds at index 1
    When I click element: loan button credit at index 1
    Then I see loan page
    And I wait application button element 30 seconds at index 1
    When I click element: application button at index 1
    And I wait credit application introduction button element 30 seconds at index 1
    When I click element: credit application introduction button at index 1
    Then I enter "11770" text to customer no-new application text area at index 1
    And I wait magnifying glass button element 30 seconds at index 1
    Then I click element: magnifying glass button at index 1
    Then I need to just wait
    Then I click element: choose customer at index 1

    When I need to just wait
    Then I need to individual client verify by warning message at index 1