@Prepaid
Feature: Prepaid Feature

@TC001
Scenario: Prepaid Public TL Yukleme
Given Open the https://efes.vodafone.com.tr/tsteShop-public/#/tl-yukleme URL
Then I see login page
And I wait gsm text area element 10 seconds at index 1
Then I enter "463011423" text to gsm text area at index 1
  And I wait continue button element 15 seconds at index 1
When I click element: continue button at index 1
  And I wait kac tl yuklemek istersiniz element 10 seconds at index 1
  When I click element: altmis tl at index 1
  And I wait devam et button element 15 seconds at index 1
  When I click element: devam et button at index 1
And I wait credit card no element 10 seconds at index 1
Then I enter "5406697543211173" text to credit card no at index 1
Then I enter "0323" text to expDate at index 1
Then I enter "465" text to cvv at index 1
  And I wait ode button element 15 seconds at index 1
When I click element: ode button at index 1
And I wait send anyway element 30 seconds at index 1
When I click element: send anyway at index 1
  And I wait tamam button element 15 seconds at index 1
  When I click element: tamam button at index 1
  And I wait sms password1 element 10 seconds at index 1
  Then I enter "1" text to sms password1 at index 1
  Then I enter "2" text to sms password2 at index 1
  Then I enter "3" text to sms password3 at index 1
  Then I enter "4" text to sms password4 at index 1
  Then I enter "5" text to sms password5 at index 1
  Then I enter "6" text to sms password6 at index 1
  And I wait 3D secure last okay button element 10 seconds at index 1
  When I click element: 3D secure last okay button at index 1


  @TC002
  Scenario: Prepaid Yanımda Web TL Yukleme
    Given Open the http://efes.vodafone.com.tr/tsteShop-selfservice-login-test/#/giris/logoutAuto URL
    Then I see loginyanimda page
    And I wait ceptel text area element 10 seconds at index 1
    When I click element: ceptel text area at index 1
    Then I enter "463011423" text to ceptel text area at index 1
    And I wait sifre text area element 10 seconds at index 1
    Then I enter "11111111" text to sifre text area at index 1
    And I wait devam et button element 15 seconds at index 1
    When I click element: devam et button at index 1
