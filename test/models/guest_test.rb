require 'test_helper'

class GuestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "a guest should enter a first name" do
  	guest = Guest.new
  	assert !guest.save
  	assert !guest.errors[:first_name].empty?
  end
    
  test "a guest should enter a last name" do
  	guest = Guest.new
  	assert !guest.save
  	assert !guest.errors[:last_name].empty?
  end
  
  test "a guest should have a unique e-mail address" do
  	guest = Guest.new
  	guest.email = guests(:kyle).email

  	assert !guest.save
  	assert !guest.errors[:email].empty?
  end

  test "a guest should have an email without spaces" do
  	guest = Guest.new
  	guest.email = "This should not work"

  	assert !guest.save
  	assert !guest.errors[:email].empty?
  	assert guest.errors[:email].include?("Must be formatted correctly")
  end
end
