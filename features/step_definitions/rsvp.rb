def create_guest_and_log_in
  @guest = Guest.create \
    email:    'foo@example.com',
    password: 'asdfasd'

  visit login_path

  fill_in 'Email',    with: @guest.email
  fill_in 'Password', with: @guest.password

  click_button 'Sign in'
end

When(/^I visit the root path$/) do
  visit root_path
end

When(/^I click "(.*?)"$/) do |link|
  click_link link
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |input, value|
  fill_in input, with: value
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
end

Given(/^I'm logged in$/) do
  create_guest_and_log_in
end

When(/^I check "(.*?)"$/) do |checkbox|
  check checkbox
end

When(/^I press "(.*?)"$/) do |button|
  click_button button
end

Given(/^I've already RSVP'd$/) do

end
