Feature: Orion Finance Finco Test Scenarios - DEKONT GÖZLEM KISMİ ÖDENMİŞ

  #1.)DEKONT GÖZLEM KISMİ ÖDENMİŞ


  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30080" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see loanapplication page

  @DekontGozlemKısmiOdenmis
  Scenario: DEKONT GÖZLEM KISMİ ÖDENMİŞ LOGİN:

    #Dekont Gözlem Kısmi Ödenmiş - 1Scenario:

    And I wait receipt element 30 seconds at index 1
    When I click element: receipt at index 1
    Then I need to just wait
    Then I click element: receipt observation at index 1


    Then I need to check area verify by page header at index 1 contains "Dekont Gözlem Ekranı"
    And I wait receipt no element 30 seconds at index 1
    When I click element: receipt no at index 1
    Then I enter "907" text to receipt no area at index 1
    And I wait receipt date element 30 seconds at index 1
    When I clear text to receipt date at index 1
    Then I enter "09082022" text to receipt date at index 1
    Then I clear text to receipt date at index 2
    Then I enter "09082022" text to receipt date at index 2
    And I wait role button element 30 seconds at index 1

    When I click element: role button at index 1
    Then I click element: row button at index 1
    And I go to down of the site
    And I wait receipt observation element 30 seconds at index 1
    Then I click element: receipt observation at index 1
    Then I need to check area verify by receipt observation at index 1 contains "Dekont Gözlem"

    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1
    And I click element: yes button at index 1
    And I wait login username element 30 seconds at index 1





