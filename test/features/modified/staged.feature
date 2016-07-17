Feature: Working with files modified in the index

  Background:
    Given I have a committed file "foo"
    When I modify "foo"
    And I add "foo" to the index
    And I run :Gministatus


  Scenario: Viewing
    Then I see
      """
      ## master
      M  foo
      ~
      """


  Scenario: Unstaging
    When I type "j" to go down a line
    And I type "-" to toggle stage
    Then I see
      """
      ## master
       M foo
      ~
      """
