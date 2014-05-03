Feature: Guest RSVP Management

  Scenario: New guest signs up 
    When I visit the root path
    And I click "RSVP"
    And I fill in "First name" with "Brad"
    And I fill in "Last name" with "Chase"
    And I fill in "Email" with "foo@example.com"
    And I fill in "Password" with "asdfasdf"
    And I fill in "Password confirmation" with "asdfasdf"
    And I click "Sign up"
    And I click "Sign up"
    Then I should see "Welcome! You have signed up successfully."

  Scenario: Guest RSVP's
    Given I'm logged in
    When I visit the root path
    And I fill in "Your friends" with "Kyle Butz"
    And I check "Will you be attending the Ceremony?"
    And I press "RSVP!"
    Then I should see "Thank you! Your RSVP has been received."

  Scenario: Existing guest signs in and updates RSVP
    Given I'm logged in
    And I've already RSVP'd
    When I visit the root path
    And I click ""
    # TODO ...
