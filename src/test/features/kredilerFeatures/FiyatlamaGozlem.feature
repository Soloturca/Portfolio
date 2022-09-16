Feature: Orion Finance Finco Test Scenarios - 006.FİYATLAMA GÖZLEM EKRANI KONTROLÜ

   #1.)Fiyatlama Gözlem Ekranı: TC001

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30090" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page

  @FiyatlamaGozlem
  Scenario: FİYATLAMA GÖZLEM: TC001

    #Fiyatlama Gözlem Ekranı

    And I wait loan button element 30 seconds at index 1
    When I click element: loan button at index 1
    Then I see loan page
    When I click element: pricing button at index 1
    And I wait financial observation button element 30 seconds at index 1

    When I click element: financial observation button at index 1
    And I wait pricing observation element 30 seconds at index 1
    Then I need to financial observation verify by pricing observation at index 1

    When I enter "OTOMASYON" text to pricing name area at index 1
    And I wait search and list pricings button element 30 seconds at index 1
    When I click element: search and list pricings button at index 1
    When I click element: row button at index 1

    When I need to just wait
    Then I need to general definitions verify by general definitions at index 1
