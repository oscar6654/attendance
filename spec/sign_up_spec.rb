require "rails_helper"

RSpec.feature "Sign_Up management", :type => ;feature do
  scenario "User creates a new account" do
    visit "/users/sign_up"

    fill_in "Name" :with => "Tester"
    fill_in "Email" :with => "test@test.com"
    fill_in "Password" :with => "helloworld"
    fill_in "Password confirmation" :with => "helloworld"
    click_button "Sign up"

    expect(page).to have_text("A message with a confirmation link has been sent to your email address. Please follow the link to activate your account.")

  end
end
