Feature: Orion Finance Finco Test Scenarios - Bankalar ve banka şubeleri
  #  This feature includes these steps:
#1.) Yeni banka şubesi oluşturma: TC001
#2.) Var olan banka şubesinin güncellenmesi: TC002
#3.) Var olan banka şubesinin silinmesi: TC003





  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "30010" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see home page
    

