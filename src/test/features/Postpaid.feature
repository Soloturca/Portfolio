@Postpaid
Feature: Postpaid Feature

  @TC001
  Scenario: Postpaid Public Payment Fatura
    Given Open the https://efes.vodafone.com.tr/tsteShop-public/#/fatura-ode URL
    Then I see login page
    And I wait gsm text area element 10 seconds at index 1
    #enter without 5
    Then I enter "461910342" text to gsm text area at index 1
    And I wait gsm continue button element 15 seconds at index 1
    When I click element: gsm continue button at index 1
    Given I cant see element: payment continue button at index 1
    And I wait payment continue button element 15 seconds at index 1
    When I click element: payment continue button at index 1
    Then I enter "5406697543211173" text to credit card no at index 1
    Then I enter "0323" text to expDate at index 1
    Then I enter "465" text to cvv at index 1
    When I click element: payment button at index 1
    And I wait send anyway element 30 seconds at index 1
    When I click element: send anyway at index 1
    And I wait 3D secure okay button element 10 seconds at index 1
    When I click element: 3D secure okay button at index 1
    And I wait sms password1 element 10 seconds at index 1
    Then I enter "1" text to sms password1 at index 1
    Then I enter "2" text to sms password2 at index 1
    Then I enter "3" text to sms password3 at index 1
    Then I enter "4" text to sms password4 at index 1
    Then I enter "5" text to sms password5 at index 1
    Then I enter "6" text to sms password6 at index 1
    And I wait 3D secure last okay button element 10 seconds at index 1
    When I click element: 3D secure last okay button at index 1


