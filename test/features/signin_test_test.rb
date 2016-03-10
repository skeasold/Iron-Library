require "test_helper"

class SigninTestTest < Capybara::Rails::TestCase
  setup do
    User.create! first_name: "First", last_name: "Last", email: "test@test.com", password: "test12345"
    Author.create! id: "1", first_name: "First", last_name: "Last", bio: "Bio text"
    Book.create! title: "Test Book", photo_url: "www.google.com", price: ".99", author_id: "1"
  end
  test "sign in and view book" do
    visit root_path
    click_link "Login"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "test12345"
    click_button "Login"
    visit root_path
    click_link "More Details"
    assert_content page, "Test Book"
  end
end
