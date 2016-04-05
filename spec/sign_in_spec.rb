require "rails_helper"

Rspec.feature "Sign_In Management", :type => :feature do
  scenario "User signs in" do
    visit "/users/sign_in"

    fill_in "Email", :with => "test@example.com"
    fill_in "Passworod", :with => "helloworld"

    click_button "Sign in"

    expect(page).to have_text("Signed in successfully.")
  end
end
