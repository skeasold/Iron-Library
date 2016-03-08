require "test_helper"

class AddNewBookTest < Capybara::Rails::TestCase

  test "Add Author" do
  visit new_author_path
    within ("#new_author") do
      fill_in "First name", with: "First"
      fill_in "Last name", with: "Last"
      fill_in "Bio", with: "Bio text"
      click_button "Create Author"
    end
  visit authors_path
  save_and_open_page
  assert_content page, "First"
  end
end
