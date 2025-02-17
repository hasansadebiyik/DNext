@VFALFT-22204 @regression @generalInformation
Feature:New Business Customer-General Information

  Background:
    Given  I have opened the "Customer Management" application
    Given  I enter a value "gerta.vathi" in the Username or email field on Sign In page
    Given  I enter a value "1234" in the Password field on Sign In page
    Given  I click the Sign in button on Sign In page
    Given  User opens Create Business Customer page on Home page
    Given  User selects the Albanian Customer from the dropdown on Search Organization page
    When   User fills in the NIPT field with valid and non-existing  "R12985637T" on Search Organization page
    Then   User clicks the Search button on Search Organization page
    And    User clicks the Next button on Search Organization page
    Then   User should see the "General Information" header on General Information  page

  @selectionOptionFrmIndustryDrop
  Scenario: As a user I want to select one option from Industry dropdown
    Given User clicks Industry dropdown on general information page
    And   User should ensure each options in industry dropdown are selectable on general information page
    Then  User should selects any option in the Industry dropdown on general information page

  @insertingName
  Scenario: As a user I want to enter name into name field
    Given User should see the Name box on the general information page on general information page
    And   User clicks Name Field on general information page
    Then  User enters a value ",,,Fer-rari.." consisting of letters and special characters in the name box on general information page

  @selectionOptionSegmentDrop
  Scenario: As a user I want to select one option from Segment dropdown
    Given User clicks Segment dropdown on general information page
    And   User should ensure each options in Segment dropdown are selectable on general information page
    Then  User should selects any options in the Segment dropdown on general information page

  @selectionOptionTaxExemptDrop
  Scenario: As a user I want to select one option from Tax Exempt dropdown
    Given User clicks Tax Exempt dropdown on general information page
    And   User should ensure each options in Tax Exempt dropdown are selectable on general information page
    Then  User should selects any option in the Tax Exempt dropdown on general information page

  @invalidEmailInsert
  Scenario Outline: As a user I want to enter invalid and invalid  characters based email into email field
    Given User clicks email field on general information page
    And   User enters "<emails>" on general information page
    And   User should see that background is red
    Given User enters valid "abc123@gmail.com" in to the email field on general information page
    Then  User should see "." and "@" and "abc123@gmail.com" inside of email structure on general information page

    Examples:
      | emails       |
      | abcgmailcom  |
      | emails@com   |
      | emails@123.c |

  @communicationMethodDrp
  Scenario: As a user I want to select one option from Communication Method dropdown
    Given User clicks Communication Method dropdown on general information page
    And   User should ensure each options in Communication Method dropdown ara selectable on general information page
    Then  User should selects SMS option in the Tax Exempt dropdown on general information page

  @selectOptionCountryDrpAlbania
  Scenario Outline: As a user I want to select one option from Country dropdown with Albania number and numbers except Albanian numbers
    Given User clicks Country Code dropdown on general information page
    Then  User should selects +355 option from country code dropdown on general information page
    And   User clicks mobile phone numbers field on general information page
    And   User enters invalid "<invalidMobile>" phone numbers and should see "Phone number must be like 6XXXXXXXX !" under mobile phone number field on general information page
    Given User clicks Country Code dropdown on general information page
    Then  User should selects +213 option from country code dropdown except Albania and clicks mobile phone numbers field on general information page
    And   User enters no number into the mobile phone number field and should see "Phone number is required !" warning message on phone field on general information page
    And   User enters mobile phone number "12346678910" with other country code except Albania on general information page

    Examples:
      | invalidMobile |
      | 61234567      |
      | 512345678     |
      | 41234567      |

  @issuingDateGeneralInformation
  Scenario: As a user I want to fill in the Issuing date field to ensure that the selected date is enabled and selectable on general information page
    Given User clicks Issuing Date field and user selects "15/10/2023" from calendar on general information page

  @fileFormatsGeneralInformat
  Scenario: As a user I want to add file which could be different format and different sizes
    Given User should see this "You have to add Extract QKR document!" warning message near to add button on general information page
    And   User adds a "document.jpg" of which format is image on general information page
    And   User should see the name of "document.jpg" added jpg document on the screen on general information page
    And   User deletes added image document on general information page
    And   User adds a "2bigger5MB.pdf" of which format is pdf with bigger five MB should see the "File size can not be bigger than 5 MB!" warning messageon general information page
    And   User adds a document of which format is "example.xlsx" on general information page
    Then  User should see "Only image and pdf files are accepted!" warning message on top of  the screen for unmatched format on general information page
    And   User adds a valid "smaller5MB.pdf" document  on general information page
    And   User should see the name of "smaller5MB.pdf" added pdf document on the screen on general information page





