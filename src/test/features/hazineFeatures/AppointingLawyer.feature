Feature: Orion Finance Finco Test Scenarios / Test Cases for Litigation

  #This feature includes these steps:
  #1.) Takip Dosyasına Avukat Atama

  @Litigation
  Scenario: Appointing Lawyer

    Given I go to "https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/" with this username: "30060" and this password:"1"
    Then I see treasury page
    And I wait treasury menu for 30060 element 3 seconds at index 1
    When I click element: treasury menu for 30060 at index 1
    And I wait Derivative transactions menu for 30060 element 3 seconds at index 1
    When I click element: Derivative transactions menu for 30060 at index 1
    And I wait swap order menu for 30060 element 3 seconds at index 1
    When I click element: swap order menu for 30060 at index 1

    And I wait Swap Bank Code element 30 seconds at index 1
    And I click element: Swap Bank Code at index 1

    And I wait Fx currency code element 30 seconds at index 1
    And I click element: Fx currency code at index 1
    And I wait Fx currency code usd element 30 seconds at index 1
    And I click element: Fx currency code usd at index 1
    And I wait Fx second bank search button element 30 seconds at index 1
    And I click element: Fx second bank search button at index 1
    And I wait Fx second bank usd option element 30 seconds at index 1
    And I click element: Fx second bank usd option at index 1

    And I wait Swap next button element 30 seconds at index 1
    And I click element: Swap next button at index 1

    And I wait Swap transaction direction element 30 seconds at index 1
    And I click element: Swap transaction direction at index 1
    And I click element: Swap transaction direction buy at index 1

    And I wait Swap usage purpose element 30 seconds at index 1
    And I click element: Swap usage purpose at index 1
    And I click element: Swap usage purpose option at index 1

    And I wait Swap buy currency interest rate element 30 seconds at index 1
    And I click element: Swap buy currency interest rate at index 1
    And I enter "4" text to Swap buy currency interest rate at index 1

    And I wait Swap sell currency interest rate element 30 seconds at index 1
    And I click element: Swap sell currency interest rate at index 1
    And I enter "2" text to Swap sell currency interest rate at index 1

    And I wait Swap due date element 30 seconds at index 1
    And I click element: Swap due date at index 1
    And I enter "04112022" text to Swap due date at index 1

    And I wait Swap spot rate element 30 seconds at index 1
    And I click element: Swap spot rate at index 1
    And I enter "18" text to Swap spot rate at index 1

    And I wait Swap forward rate element 30 seconds at index 1
    And I click element: Swap forward rate at index 1
    And I enter "19" text to Swap forward rate at index 1

    And I wait Swap description element 30 seconds at index 1
    And I click element: Swap description at index 1
    And I enter "otomation test" text to Swap description at index 1

    And I wait Swap sell currency code element 30 seconds at index 1
    And I click element: Swap sell currency code at index 1
    And I click element: Swap sell currency code tl at index 1

    And I wait Swap button calculate element 30 seconds at index 1
    And I click element: Swap button calculate at index 1
    And I wait Swap button calculate popup element 30 seconds at index 1
    And I click element: Swap button calculate popup at index 1
    And I wait Swap button ok popup element 30 seconds at index 1
    And I click element: Swap button ok popup at index 1

    And I wait Swap legs tab element 30 seconds at index 1
    And I click element: Swap legs tab at index 1
    And I wait Swap first leg buy amount element 30 seconds at index 1
    And I click element: Swap first leg buy amount at index 1
    And I enter "10000" text to Swap first leg buy amount at index 1

    And I wait Swap documents tab element 30 seconds at index 1
    And I click element: Swap documents tab at index 1

    And I wait Swap documents upload button element 30 seconds at index 1
    And I upload the file for swap order "Swap.docx" using the: Swap documents upload button at index 1
    And I double click element: Swap documents description at index 1
    And I enter "otomasyon test" text to Swap documents description area at index 1

    And I wait Swap save tab element 30 seconds at index 1
    And I click element: Swap save tab at index 1
    And I wait Swap save button element 30 seconds at index 1
    Then I click element: Swap save button at index 1

    And I wait Approve note area element 30 seconds at index 1
    And I click element: Approve note area at index 1
    And I enter "Otomasyon swap" text to Approve note area at index 1
    And I click element: Comment yes button at index 1
