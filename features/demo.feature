Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I click Try Now
        And I enter example@example.com in SignUp email
        And I enter Parole123 in SignUp passwords
        And I enter BestProject in SignUp project name
        And I cancel SignUp
