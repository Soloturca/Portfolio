Feature: Orion Finance Finco Test Scenarios - SATIN ALMA TALEP

  #1.)SATIN ALMA TALEP OLUŞTURMA
  #2.)SATIN ALMA TALEP ONAYI
  #3.)SATIN ALMA TALEP LİMİT ONAYI
  #4.)Satın alma akışı teslimat onayı
  #5.)Satın alma akışı Fatura eşleştirme onayı
  #6.)Satın alma akışı, muhasebe yetkili onayı

  Background: System Login & Creating Job for unique reference number
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page
    Then I enter "19007" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see buy page

  @SatınAlmaTalep
  Scenario: SATIN ALMA LOGİN:

    #Satın alma talep oluşturma - 1Scenario:
    And I wait purchase and expense button element 30 seconds at index 1
    When I click element: purchase and expense button at index 1
    Then I click element: operational operations button at index 1
    And I wait purchase request button element 30 seconds at index 1
    When I click element: purchase request button at index 1
    And I wait page header element 30 seconds at index 1
    When I click element: new at index 1
    Then I wait new element 10 seconds at index 1

    Then I copy the information by copying the delivery date to: delivery date at index 1
    Then I copy the information by copying the delivery date to: estimated eompletion date at index 1
    Then I enter "test" text to delivery adress area at index 1
    Then I enter "1234" text to Vodafone pd no area at index 1
    And I wait uniq ppmid element 30 seconds at index 1
    When I click element: uniq ppmid at index 1
    And I enter "1212" text to uniq ppmid area at index 1
    And I wait supplier number search button element 30 seconds at index 1
    When I click element: supplier number search button at index 1
    And I click element: search button at index 4
    When I click element: row button at index 3
    When I click element: transaction currency selection at index 1
    And I click element: Select TL currency type at index 1
    And I wait material group search element 30 seconds at index 1

    When I click element: material group search at index 1
    And I click element: material group search button at index 4
    And I wait row first button element 30 seconds at index 3
    When I click element: row first button at index 3
    And  I click element: material type search at index 2
    And I wait material type search button element 30 seconds at index 4
    Then I click element: material type search button at index 4
    And I click element: fifth row button at index 3
    And I wait material name element 30 seconds at index 1
    When I double click element: material name at index 1
    And I enter "testl14" text to material name area at index 1
    And I click element: unit search at index 1
    And I select element: "SATIŞ BİRİMLERİ" under unit search area at index 1
    And I click element: free space at index 1
    And I wait piece element 30 seconds at index 1
    When I double click element: piece at index 1
    Then I enter "2" text to piece area at index 1
    And I click element: free space at index 1
    And  I wait price excluding vat element 30 seconds at index 1
    When I double click element: price excluding vat at index 1
    And I enter "500" text to price area excluding vat at index 1
    And I click element: vat rate search at index 2
    And I select element: "%18" under vat rate search area at index 1
    And I click element: vat amount at index 1

    When I click element: continue to documents at index 1
    And I wait upload to word button element 30 seconds at index 1
    And I upload the file for payment "testtd.docx" using the: upload to word button at index 1
    And I upload the file for payment "testtd.docx" using the: upload to word button at index 2
    And I wait save button element 30 seconds at index 1
    When I click element: save button at index 1
    And I wait approval note element 30 seconds at index 1
    When I click element: approval note at index 1
    Then I enter "test onay" text to approval note at index 1
    And I wait yes button element 30 seconds at index 2
    When I click element: yes button at index 2
    And I wait reference number text area element 30 seconds at index 1
    Then I get the information: reference number text area at index 1
    And I click element: close button at index 2
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1

    #Satın alma talep onay- 2Scenario:
    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page

    Then I enter "3006" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see buy page

    And I wait workflow management button element 30 seconds at index 1
    When I click element: workflow management button at index 1
    Then I see workflowManagement page
    And I wait jobs pending on my list button element 30 seconds at index 1
    When I click element: jobs pending on my list button at index 1

    Then I enter my reference: "reference number" text to reference number area at index 1
    When I click element: inquire button at index 1
    And I wait row button element 30 seconds at index 1
    When I click element: row button at index 1
    And I wait warning popup element 30 seconds at index 1
    When I click element: yes button at index 1

    And I wait approve button element 30 seconds at index 1
    When I click element: approve button at index 1
    And I wait warning popup element 30 seconds at index 1
    And I wait yes button element 30 seconds at index 1
    When I click element: yes button at index 1
    And I wait pricing no area element 30 seconds at index 1
    Then I get pricing information of: pricing no area at index 1
    And I wait reference number limit text area element 30 seconds at index 1
    Then I get the information: reference number limit text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1

    #satın alma talep limit onayı 3scenario

    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page

    Then I enter "3005" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see buy page

    And I wait workflow management button element 30 seconds at index 1
    When I click element: workflow management button at index 1
    Then I see workflowManagement page
    And I wait jobs pending on my list button element 30 seconds at index 1
    When I click element: jobs pending on my list button at index 1

    Then I enter my reference: "reference number" text to reference number area at index 1
    When I click element: inquire button at index 1
    And I wait row button element 30 seconds at index 1
    When I click element: row button at index 1
    And I wait warning popup element 30 seconds at index 1
    When I click element: yes button at index 1

    And I wait approve button element 30 seconds at index 1
    When I click element: approve button at index 1
    And I wait warning popup element 30 seconds at index 1
    And I wait yes button element 30 seconds at index 1
    When I click element: yes button at index 1
    And I wait pricing no area element 30 seconds at index 1
    Then I get pricing information of: pricing no area at index 1
    And I wait reference number limit text area element 30 seconds at index 1
    Then I get the information: reference number limit text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1

    #Satın alma akışı teslimat onayı 4Scenario:

    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page

    Then I enter "19007" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see buy page
    And I wait workflow management button element 30 seconds at index 1
    When I click element: workflow management button at index 1
    Then I see workflowManagement page
    And I wait jobs pending on my list button element 30 seconds at index 1
    When I click element: jobs pending on my list button at index 1

    Then I enter my reference: "reference number" text to reference number area at index 1
    When I click element: inquire button at index 1
    And I wait row button element 30 seconds at index 1
    When I click element: row button at index 1
    And I wait warning popup element 30 seconds at index 1
    When I click element: yes button at index 1

    And I click element: received in full at index 3
    And I select element: "Evet" under received in full area at index 1
    And I wait approve button element 30 seconds at index 1
    When I click element: approve button at index 1
    And I wait warning popup element 30 seconds at index 1
    And I wait yes button element 30 seconds at index 1
    When I click element: yes button at index 1
    And I wait reference number limit text area element 30 seconds at index 1
    Then I get the information: reference number limit text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1

    #Satın alma akışı Fatura eşleştirme onayı 5Scenario:

    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page

    Then I enter "30060" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see buy page
    And I wait workflow management button element 30 seconds at index 1
    When I click element: workflow management button at index 1
    Then I see workflowManagement page
    And I wait jobs pending on my list button element 30 seconds at index 1
    When I click element: jobs pending on my list button at index 1

    Then I enter my reference: "reference number" text to reference number area at index 1
    When I click element: inquire button at index 1
    And I wait row button element 30 seconds at index 1
    When I click element: row button at index 1
    And I wait warning popup element 30 seconds at index 1
    When I click element: yes button at index 1
    Then I see buy page

    And I click element: invoice no area at index 1
    And I enter "25246" text to invoice no area at index 1
    And I wait consignment note no area element 30 seconds at index 1
    When I click element: consignment note no area at index 1
    And I enter "25146" text to consignment note no area at index 1
    And I need to just wait
    And I go to top of the site
    Then I see workflowManagement page

    And I wait approve button element 30 seconds at index 1
    When I click element: approve button at index 1
    And I wait warning popup element 30 seconds at index 1
    And I wait yes button element 30 seconds at index 1
    When I click element: yes button at index 1
    And I wait reference number limit text area element 30 seconds at index 1
    Then I get the information: reference number limit text area at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1


    #Satın alma akışı, muhasebe yetkili onayı 6Scenario:

    Given Open the https://orion-finance-finco-amtest.apps.dvt-fcloud.vfinans.local/ URL
    Then I see login page

    Then I enter "30080" text to username text area at index 1
    Then I enter "1" text to password text area at index 1
    And I wait login button element 30 seconds at index 1
    When I click element: login button at index 1
    Then I see buy page
    And I wait workflow management button element 30 seconds at index 1
    When I click element: workflow management button at index 1
    Then I see workflowManagement page
    And I wait jobs pending on my list button element 30 seconds at index 1
    When I click element: jobs pending on my list button at index 1

    Then I enter my reference: "reference number" text to reference number area at index 1
    When I click element: inquire button at index 1
    And I wait row button element 30 seconds at index 1
    When I click element: row button at index 1
    And I wait warning popup element 30 seconds at index 1
    When I click element: yes button at index 1

    And I wait approve button element 30 seconds at index 1
    When I click element: approve button at index 1
    And I wait warning popup element 30 seconds at index 1
    And I wait yes button element 30 seconds at index 1
    When I click element: yes button at index 1
    And I wait close button element 30 seconds at index 1
    When I click element: close button at index 1
    And I wait close system button element 30 seconds at index 1
    When I click element: close system button at index 1