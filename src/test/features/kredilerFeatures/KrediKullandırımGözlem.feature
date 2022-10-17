Feature: Orion Finance Finco Test Scenarios - 016.KREDİ KULLANDIRIM GÖZLEM EKRANI KONTROLÜ

   #1.)Kredi Kullandırım Gözlem Ekranı: TC001

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30030" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see loan page

  @KrediKullandirimGozlem
  Scenario: Kredi Kullandırım Gözlem Ekranı: TC001

    #Kredi Kullandırım Gözlem Ekranı - 1Scenario:

    And I wait credit element 30 seconds at index 1
    When I click element: credit at index 1
    And I click element: loan disbursement at index 1
    Then I click element: loan observation button at index 1
    And I wait customer no-new application text area element 30 seconds at index 1
    Then I enter "11876" text to customer no-new application text area at index 1
    Then I clear text to loan date at index 3
    Then I clear text to loan date at index 4
    And I click element: magnifying glass v2 button at index 1
    And I click element: choose a side at index 1
    Then I go to down of the site
    And I click element: close button at index 2
    And I wait usage controls button element 30 seconds at index 1
    Then I click element: usage controls button at index 1
    And I wait close button element 30 seconds at index 2
    

