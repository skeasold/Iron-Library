require "test_helper"

class AddNewBookTest < Capybara::Rails::TestCase
  setup do
    User.create! first_name: "First", last_name: "Last", email: "test@test.com", password: "test12345"
  end

  test "Add Author" do
    visit root_path
    click_link "Login"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "test12345"
    click_button "Login"

    visit new_author_path
    within ("#new_author") do
      fill_in "First name", with: "First"
      fill_in "Last name", with: "Last"
      fill_in "Bio", with: "Bio text"
      click_button "Create Author"
    end
    visit authors_path
    assert_content page, "First"
  end
end
