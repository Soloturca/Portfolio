#@Prepaid
#Feature: Prepaid Feature
#
#  @TC001
#  Scenario: Prepaid Public Payment Fatura
#    Given Open the https://efes.vodafone.com.tr/tsteShop-public/#/tl-yukleme URL
#    Then I see login page
#    And I wait gsm text area element 10 seconds at index 1
#    Then I enter "5463011423" text to gsm text area at index 1
#    And I wait tl button element 10 seconds at index 1
#    When I click element: continue button at index 1
#    And I wait credit card no element 10 seconds at index 1
#    Then I enter "5406697543211173" text to credit card no at index 1
#    Then I enter "0323" text to expDate at index 1
#    Then I enter "465" text to cvv at index 1
#    Then I wait clickable element: payment button at index 1
#    When I click element: payment button at index 1
#    And I wait send anyway element 30 seconds at index 1
#    When I click element: send anyway at index 1