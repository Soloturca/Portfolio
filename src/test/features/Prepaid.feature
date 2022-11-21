@Prepaid
Feature: Prepaid Feature

@TC_001_PREPAID_PublicPayment_TL_Yukleme.java
Scenario: Prepaid Public TL Yukleme
  Given Open the https://efes.vodafone.com.tr/tsteShop-public/#/tl-yukleme URL
  Then I see prepaidlogin page
  And I wait gsm text area element 10 seconds at index 1
  Then I enter "463011423" text to gsm text area at index 1
  And I wait continue button element 10 seconds at index 1
  When I click element: continue button at index 1
  And I wait yuklemeye devam et button element 10 seconds at index 1
  When I click element: yuklemeye devam et button at index 1
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
  Then I need to just wait



  @TC_001_PREPAID_YanimdaWeb_TL_Yukleme.java
  Scenario: Prepaid Yanımda Web TL Yukleme
    Given Open the http://efes.vodafone.com.tr/tsteShop-selfservice-login-test/#/giris/logoutAuto URL
    Then I see loginyanimda page
    And I wait ceptel text area element 10 seconds at index 1
    When I click element: ceptel text area at index 1
#    Then I enter "463029083" text to ceptel text area at index 1

    Then I enter msisdn from db text to ceptel text area at index 1


    And I wait sifre text area element 10 seconds at index 1
    Then I enter "11111111" text to sifre text area at index 1
    And I wait devam et button element 15 seconds at index 1
    When I click element: devam et button at index 1
    And I wait smssifre1 element 10 seconds at index 1
    Then I enter "1" text to smssifre1 at index 1
    And I wait smssifre2 element 10 seconds at index 1
    Then I enter "1" text to smssifre2 at index 1
    And I wait smssifre3 element 10 seconds at index 1
    Then I enter "1" text to smssifre3 at index 1
    And I wait smssifre4 element 10 seconds at index 1
    Then I enter "1" text to smssifre4 at index 1
    And I wait hayirsimdidegilbutton element 10 seconds at index 1
    When I click element: hayirsimdidegilbutton at index 1
    Then I refresh page
    And I wait tlyuklebutton element 10 seconds at index 1
    When I click element: tlyuklebutton at index 1
    Then I need to just wait
    And I wait 60tlbutton element 10 seconds at index 1
    When I click element: 60tlbutton at index 1
    And I wait yenikartileodebutton element 10 seconds at index 1
    When I click element: yenikartileodebutton at index 1
    And I wait kartnumarasi element 10 seconds at index 1
    Then I enter "5406697543211173" text to kartnumarasi at index 1
    Then I enter "0323" text to sonkullanmatarihi at index 1
    Then I enter "465" text to guvenlikkodu at index 1
    And I wait yuklemeyapbutton element 10 seconds at index 1
    When I click element: yuklemeyapbutton at index 1
    And I wait onaylabutton element 10 seconds at index 1
    When I click element: onaylabutton at index 1
    And I wait otptamambutton element 10 seconds at index 1
    When I click element: otptamambutton at index 1
    And I wait otp1 element 10 seconds at index 1
    Then I enter "1" text to otp1 at index 1
    Then I enter "2" text to otp2 at index 1
    Then I enter "3" text to otp3 at index 1
    Then I enter "4" text to otp4 at index 1
    Then I enter "5" text to otp5 at index 1
    Then I enter "6" text to otp6 at index 1
    And I wait lasttamambutton element 10 seconds at index 1
    When I click element: lasttamambutton at index 1
    And I wait anyway2button element 10 seconds at index 1
    When I click element: anyway2button at index 1
    Then I need to just wait


  @TC_002_PREPAID_YanimdaWeb_Masterpass_TL_Yukleme.java
  Scenario: Prepaid Yanımda Web Masterpass TL Yukleme
    Given Open the http://efes.vodafone.com.tr/tsteShop-selfservice-login-test/#/giris/logoutAuto URL
    Then I see loginyanimda page
#    !!! TOPLU KOSUM ICIN YORUMA ALINMISTIR. CASE'I TEK BAŞINA KOŞMAK ISTERSENIZ BU SATIRLARI DA KULLANIN !!!
#    And I wait ceptel text area element 10 seconds at index 1
#    When I click element: ceptel text area at index 1
#    Then I enter "463029083" text to ceptel text area at index 1
#    And I wait sifre text area element 10 seconds at index 1
#    Then I enter "11111111" text to sifre text area at index 1
#    And I wait devam et button element 15 seconds at index 1
#    When I click element: devam et button at index 1
#    And I wait smssifre1 element 10 seconds at index 1
#    Then I enter "1" text to smssifre1 at index 1
#    And I wait smssifre2 element 10 seconds at index 1
#    Then I enter "1" text to smssifre2 at index 1
#    And I wait smssifre3 element 10 seconds at index 1
#    Then I enter "1" text to smssifre3 at index 1
#    And I wait smssifre4 element 10 seconds at index 1
#    Then I enter "1" text to smssifre4 at index 1
#    And I wait hayirsimdidegilbutton element 10 seconds at index 1
#    When I click element: hayirsimdidegilbutton at index 1
#    Then I refresh page
    And I wait tlyuklebutton element 10 seconds at index 1
    When I click element: tlyuklebutton at index 1
    Then I need to just wait
    And I wait gecis butonu element 10 seconds at index 1
    When I click element: gecis butonu at index 1
    And I wait 60tlbutton element 10 seconds at index 1
    When I click element: 60tlbutton at index 1
    And I wait yuklemeyapbutton element 10 seconds at index 1
    When I click element: yuklemeyapbutton at index 1
    And I wait onaylabutton element 10 seconds at index 1
    When I click element: onaylabutton at index 1
    Then I need to just wait



  @TC_003_PREPAID_YanimdaWeb_Ek_Paket_Al.java
  Scenario: Prepaid Yanımda Web Ek Paket Al
    Given Open the http://efes.vodafone.com.tr/tsteShop-selfservice-login-test/#/giris/logoutAuto URL
    Then I see loginyanimda page
#   !!! TOPLU KOSUM ICIN YORUMA ALINMISTIR. CASE'I TEK BAŞINA KOŞMAK ISTERSENIZ BU SATIRLARI DA KULLANIN !!!
#    And I wait ceptel text area element 10 seconds at index 1
#    When I click element: ceptel text area at index 1
#    Then I enter "463029083" text to ceptel text area at index 1
#    And I wait sifre text area element 10 seconds at index 1
#    Then I enter "11111111" text to sifre text area at index 1
#    And I wait devam et button element 15 seconds at index 1
#    When I click element: devam et button at index 1
#    And I wait smssifre1 element 10 seconds at index 1
#    Then I enter "1" text to smssifre1 at index 1
#    And I wait smssifre2 element 10 seconds at index 1
#    Then I enter "1" text to smssifre2 at index 1
#    And I wait smssifre3 element 10 seconds at index 1
#    Then I enter "1" text to smssifre3 at index 1
#    And I wait smssifre4 element 10 seconds at index 1
#    Then I enter "1" text to smssifre4 at index 1
#    And I wait hayirsimdidegilbutton element 10 seconds at index 1
#    When I click element: hayirsimdidegilbutton at index 1
#    Then I refresh page
    And I wait ekpaketalbutton element 10 seconds at index 1
    When I click element: ekpaketalbutton at index 1
    And I wait yurtdisikullanimbutton element 10 seconds at index 1
    When I click element: yurtdisikullanimbutton at index 1
    And I wait hemenalbutton element 10 seconds at index 1
    When I click element: hemenalbutton at index 1
    And I wait satinalbutton element 10 seconds at index 1
    When I click element: satinalbutton at index 1
    Then I need to just wait





    @TC_005_PREPAID_YanimdaWeb_Kalan_Kullanim_Goruntuleme.java
    Scenario: Prepaid Yanımda Web Kalan Kullanim Goruntuleme
      Given Open the http://efes.vodafone.com.tr/tsteShop-selfservice-login-test/#/giris/logoutAuto URL
      Then I see loginyanimda page
#      !!! TOPLU KOSUM ICIN YORUMA ALINMISTIR. CASE'I TEK BAŞINA KOŞMAK ISTERSENIZ BU SATIRLARI DA KULLANIN !!!
#      And I wait ceptel text area element 10 seconds at index 1
#      When I click element: ceptel text area at index 1
#      Then I enter "463029083" text to ceptel text area at index 1
#      And I wait sifre text area element 10 seconds at index 1
#      Then I enter "11111111" text to sifre text area at index 1
#      And I wait devam et button element 15 seconds at index 1
#      When I click element: devam et button at index 1
#      And I wait smssifre1 element 10 seconds at index 1
#      Then I enter "1" text to smssifre1 at index 1
#      And I wait smssifre2 element 10 seconds at index 1
#      Then I enter "1" text to smssifre2 at index 1
#      And I wait smssifre3 element 10 seconds at index 1
#      Then I enter "1" text to smssifre3 at index 1
#      And I wait smssifre4 element 10 seconds at index 1
#      Then I enter "1" text to smssifre4 at index 1
#      And I wait hayirsimdidegilbutton element 10 seconds at index 1
#      When I click element: hayirsimdidegilbutton at index 1
#      Then I refresh page
      And I wait kalankullanimlar element 10 seconds at index 1
      When I click element: kalankullanimlar at index 1
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
      Then I need to just wait

      Then I have to catch msisdn from DB







