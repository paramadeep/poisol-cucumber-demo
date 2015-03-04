Feature: Pay for a in cart

  Scenario: Compute total cost
    Given a US dollar is rated at 100 rupees for 22-02-2015
    And cost of a soap is 2 US dollar
    When 2 soaps are available in the cart
    Then the total cost should be 400 rupees

  Scenario: use yesterdays rate when todays rates are not available 
    Given the rates for 22-02-2015 is not available
    And a US dollar is rated at 50 rupees for 21-02-2015
    And cost of a soap is 2 US dollar
    When 2 soaps are available in the cart
    Then the total cost should be 200 rupees
