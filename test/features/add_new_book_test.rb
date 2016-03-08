require "test_helper"

class AddNewBookTest < Capybara::Rails::TestCase
  setup do
    Author.create first_name: "First", last_name: "Last", bio: "Bio text"
  end

  test "Add book" do
  visit new_book_path
    within ("#new_book") do
      fill_in "Title", with: "Test Book"
      fill_in "Photo url", with: "www.google.com"
      fill_in "Price", with: "10.00"
      fill_in "Author", with: "1"
      click_button "Create Book"
    end
  visit root_path
  save_and_open_page
  assert_content page, "Test Book"
  end
end
