Feature: send confirmation sms

  Scenario: Send successful sms
    Given 9393939 is a valid number
    When a "hi" is send to 9393939
    Then show success message dialog

  Scenario: fails when number doesn't exist
    Given 345234521345 is a invalid number
    When a "hi" is sent to 345234521345
    Then a error dialog is show 

 Scenario: fails when message is too long
    Given sms server fails for long messages
    When a long message is sent to a valid number
    Then a error dialog is show 

