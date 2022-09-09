Feature: Orion Finance Finco Test Scenarios - Teminat
  #  This feature includes these steps:
#1.) Teminat Oluşturma: TC001
#2.) Var olan teminatın güncellenmesi: TC002
#3.) Teminatın pasife alınması: TC003
#4.) Var olan teminatın gözlemlenmesi: TC004
#5.) Var olan teminatın bir krediye bağlanması: TC005
#6.) Var olan kredinin teminatının çözülmesi: TC006



  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "40000" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page
    


  @xxxxx
  Scenario: Bireysel Müşteri Oluşturma: TC001 -
    Then I see customer page
    And I wait customer transaction element 30 seconds at index 1
    When I click element: customer transaction at index 1
    And I wait customer management button element 30 seconds at index 1
    When I click element: customer management button at index 1
    And I wait tc no Area element 10 seconds at index 1
    And I enter "54232539340" text to tc no Area at index 1
    And I click element: customer search button at index 1
    And I click element: continue button at index 1
    And I click element: general information continue button at index 1
    Then I click element: new number button at index 1
    Then I enter "5435438756" text to phone number area at index 1
