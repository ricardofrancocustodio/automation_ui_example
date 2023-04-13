#language:en
#noinspection SpellCheckingInspection

Feature:
  As a QA Engineer
  I want to access a page
  So that I can check the automation working


  Scenario: Fill out FullName input
    Given a QA Enginner access a page
    Then fill out the form with my name


  Scenario Outline: Fill out for with first and last name
    Given a QA Enginner access a page
    When fill out the form with credentials <firstname> <lastname>

    Examples:
      | firstname | lastname |
      | Homer     | Simpson  |

    Scenario: Choose Country and State
      Given I choose a country
      Then I choose a State

    Scenario: Select shipping address same as billing address and save this information for next time
      Given I select the item shipping address same as billing address
      Then I select the item Save this information for next time
      Then click on continue to checkout button to submit the form
