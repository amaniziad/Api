Feature: Test Calculator
  Scenario: Add two number
    Given I have a calculator
    When I add 2 and 3
    Then the result should be 5