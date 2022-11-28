@Postpaid
Feature: Postpaid Feature

  @TC001
  Scenario: Postpaid Public Payment Fatura
    Given Open the https://efes.vodafone.com.tr/tsteShop-public/#/fatura-ode URL
    Then I see login page
    Then I need to just wait
    Then I execute db queries for pay the bill
    And I wait gsm text area element 10 seconds at index 1
   #enter without 5
    Then I enter "464009831" text to gsm text area at index 1
    And I wait gsm continue button element 15 seconds at index 1
    When I click element: gsm continue button at index 1
    Given I scroll and see element: payment continue button at index 1
    And I wait payment continue button element 15 seconds at index 1
    When I click element: payment continue button at index 1
    Then I enter "5406697543211173" text to credit card no at index 1
    When I click element: expDate at index 1
    And I wait expDate popup element 15 seconds at index 1
    When I click element: expDate popup next button at index 1
    And I wait expDate popup select element 15 seconds at index 1
    When I click element: expDate popup select at index 1
    #Then I enter "0323" text to expDate at index 1
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
    Then I need to just wait

  @TC002
  Scenario: Postpaid Yanimda Web Fatura Ödeme
    Given Open the http://efes.vodafone.com.tr/tsteShop-selfservice-login-test/#/giris/logoutAuto/ URL
    Then I see loginYanimdaWeb page
    Then I need to just wait
    Then I execute db queries for pay the bill
    And I wait telephone number element 10 seconds at index 1
    When I click element: telephone number at index 1
   #enter without 5
    Then I enter "464009831" text to telephone number at index 1
    And I wait password element 10 seconds at index 1
    Then I enter "11111111" text to password at index 1
    And I wait login button element 10 seconds at index 1
    When I click element: login button at index 1
    And I wait two-step verification1 element 10 seconds at index 1
    Then I enter "1" text to two-step verification1 at index 1
    Then I enter "1" text to two-step verification2 at index 1
    Then I enter "1" text to two-step verification3 at index 1
    Then I enter "1" text to two-step verification4 at index 1
    And I wait remember me element 10 seconds at index 1
    When I click element: remember me at index 1
    Then I refresh page
    Then I need to just wait
    Given I scroll and see element: pay bill at index 1
    When I click element: pay bill at index 1
    Then I need to just wait
    Given I scroll and see element: pay bill button at index 1
    When I click element: pay bill button at index 1
    Then I need to just wait
    And I wait visa yes button element 10 seconds at index 1
    When I click element: visa yes button at index 1
    Then I need to just wait


  @TC003
  Scenario: Postpaid Yanimda Web Masterpass Fatura Ödeme
    Given Open the http://efes.vodafone.com.tr/tsteShop-selfservice-login-test/#/giris/logoutAuto/ URL
    Then I see loginYanimdaWeb page
    Then I need to just wait
    Then I execute db queries for pay the bill
    And I wait pay bill element 10 seconds at index 1
    When I click element: pay bill at index 1
    Then I need to just wait
    And I wait yeni fatura ode button element 10 seconds at index 1
    When I click element: yeni fatura ode button at index 1
    And I wait pay bill page tel text area element 10 seconds at index 1
    Given I scroll and see element: master pass select at index 1
    When I click element: master pass select at index 1
    Then I enter "5406697543211173" text to master pass credit card no at index 1
    Then I enter "0323" text to master pass expDate at index 1
    Then I enter "465" text to master pass cvv at index 1
    And I wait master pass card save button element 10 seconds at index 1
    When I click element: master pass card save button at index 1
    And I wait master pass card name element 10 seconds at index 1
    Then I enter "." text to master pass card name at index 1
    Given I scroll and see element: pay bill button at index 1
    When I click element: pay bill button at index 1
    And I wait 3D okay button2 element 10 seconds at index 1
    When I click element: 3D okay button2 at index 1
    And I wait 3D sms password1 element 10 seconds at index 1
    Then I enter "1" text to 3D sms password1 at index 1
    Then I enter "2" text to 3D sms password2 at index 1
    Then I enter "3" text to 3D sms password3 at index 1
    Then I enter "4" text to 3D sms password4 at index 1
    Then I enter "5" text to 3D sms password5 at index 1
    Then I enter "6" text to 3D sms password6 at index 1
    And I wait 3D confirmation element 10 seconds at index 1
    When I click element: 3D confirmation at index 1


  @TC004
  Scenario: Postpaid Yanimda Web Ek Paket Al
    Given Open the http://efes.vodafone.com.tr/tsteShop-selfservice-login-test/#/giris/logoutAuto/ URL
    Then I see loginYanimdaWeb page
    Then I need to just wait
    And I wait ek paket al button element 10 seconds at index 1
    When I click element: ek paket al button at index 1
    Then I need to just wait
    And I wait option dropdown element 10 seconds at index 1
    When I click element: option dropdown at index 1
    Then I click element: option dropdown select at index 1
    And I wait hemen al button element 5 seconds at index 1
    When I click element: hemen al button at index 1
    Then I need to just wait
    And I wait paket satin al button element 5 seconds at index 1
    When I click element: paket satin al button at index 1
    Then I need to just wait


  @TC005
  Scenario: Postpaid Yanimda Web Kalan Kullanim Görüntüleme
    Given Open the http://efes.vodafone.com.tr/tsteShop-selfservice-login-test/#/giris/logoutAuto/ URL
    Then I see loginYanimdaWeb page
    Then I need to just wait
    And I wait tarifelerim ve kullanimlarim main button element 10 seconds at index 1
    When I click element: tarifelerim ve kullanimlarim main button at index 1
    Then I need to just wait
    And I wait tarifem ve kalan kullanimlarim button element 10 seconds at index 1
    When I click element: tarifem ve kalan kullanimlarim button at index 1
    And I wait kalan kullanimlarim text element 10 seconds at index 1
    #gb
    And I wait kalan GB text element 10 seconds at index 1
    And I wait kalan GB element 10 seconds at index 1
    Then I get the value of kalan GB value at index 1
    #dk
    Given I scroll and see element: kalan DK text at index 1
    And I wait kalan DK text element 10 seconds at index 1
    When I click element: kalan DK text at index 1
    And I wait kalan DK element 10 seconds at index 1
    Then I get the value of kalan DK value at index 1
    #sms
    And I wait kalan SMS text element 10 seconds at index 1
    Given I scroll and see element: kalan SMS at index 1
    And I wait kalan SMS element 10 seconds at index 1
    When I click element: kalan SMS at index 1
    Then I get the value of kalan SMS value at index 1
    #prepaid kısmında url e girebilmesi için önce çıkış yapmamız gerekiyor.
    Then I need to just wait
    And I wait logout list element 10 seconds at index 1
    When I click element: logout list at index 1
    Then I need to just wait
    And I wait logout element 10 seconds at index 1
    When I click element: logout at index 1
    Then I need to just wait
    And I wait logout popup element 10 seconds at index 1
    When I click element: logout popup at index 1



