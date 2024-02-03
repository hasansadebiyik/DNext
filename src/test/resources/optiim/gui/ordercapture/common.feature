#language: en

Feature: Common

  @regression @pia @common @VFALFT-13805 @smokep
    Scenario: Test Payment Microservice Instance in DNext
    Given I have opened the "Customer Management" application
    When I have logged into the system.
    When I Create Aggregated Institute Customer
      |name               |
      |Institute          |
    When I open "Customer360" menu
    Then I should be seeing that the "Customer Search" page is opened
    And  I should be seeing that Select Search Type field is a Dropdown list
    And  I should be seeing that "Customer Name", "Personal Number", "NIPT", "Mac Of Device", "Card Serial", "Username of PPoE", "Onu Serial for Fiber Subscriptions", "IP", "Fix Phone Number" values are displayed
    When I select the "NIPT" value from Select Search Type DropdownList
    When I enter "" value on Search field and click Search button
    Then I should be seeing that a related customer can be displayed
    When I click on related customer from search list
    And  I click "Account" Tab for Customer360 Page
    When I click the New Order button
    Then I should be seeing that New Order page is opened
    When I select "Vodafone Gigafibra 50 Mbps" product and click
    Then I should be seeing that "Vodafone Gigafibra 50 Mbps" Offer product is selected
    When I select a value "random" Product Term field
    When I click  the "Akses Fee per Modem Basic" Add-on product
    When I select a value "random" Product Term field for Purchasable Resources
    When I enter a value "14" in the MacAddress field
    #And  I enter a value "48575443AB31D1A8" in the PPPoEUser field
    #And  I select a value "FIBER" TVInfrastructure field
    #Then I should be seeing that a value is selected and Add to Card button becomes visible
    When I click the Add to Cart button
    #Then I should be seeing the popup alert message "Shopping cart created successfully!" for Products Page
    Then I should be seeing that "Vodafone Gigafibra 50 Mbps" my selected additional product is displayed
    Then I should be seeing that "Akses Fee per Modem Basic" my selected additional product is displayed
    When I click the Checkout button
    #Then I should be seeing that "Before checkout" message is displayed
    Then I should be seeing that "Upload Documents" message is displayed
    Then I should be seeing that "Total Payable Amount" message is displayed
    #Then I should be seeing that the price in the cart is the same as the "Total Payable Amount"
    Then I should be seeing that the "Payment Collected" come as a drop-down list
    Then I should be seeing that the "Payment Method" come as a drop-down list
    Then I should be seeing "CASH,POS"
    And  I select a value "CASH" in the Payment Method field for Collect Payment & Confirm
    And  I click the Payment Collected
    When I click the Proceed button
    #When I click the "PROCEED" button
