Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I click Try Now
        And I enter demo@somethng.com in SignUp email
        And I enter parole112 in SignUp passwords
        And I enter demoProject in SignUp project name
        Then I cancel SignUp

    Scenario: Login
        Given I am on Appimation home page
        When I open login form
        And I enter modris.ozols@testdevlab.com in Login email
        And I enter Parole123 in Login password
        And I click Login button
        Then I Validate successful login
