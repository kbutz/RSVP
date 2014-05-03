Feature: User RSVP Management

  Scenario: New user signs up and RSVP's
    # Given I'm not logged in
    When I visit the site
    And I click "RSVP"

  Scenario: Existing user signs in and updates RSVP
