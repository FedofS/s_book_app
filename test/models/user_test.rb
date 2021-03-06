require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@user = User.new(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
  	assert @user.valid?
  end

  test "name should be present" do
  	@user.name = "a" * 45
  	assert @user.valid?
  end

	test "email should be present" do
  	@user.email = " "
  	assert_not @user.valid?
  end

  test "password should be have minimum lenght" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

end
