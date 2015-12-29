require "test_helper"

feature "Items::CreatingAnItem" do
  scenario "create a new item" do
    visit items_path
    click_link('New Item')
    fill_in 'Name', with: "Item 1"
    click_button('Create Project')
    page.text.must_include "Project has been successfully created"
    assert page.has_css?(".alert-box"), "Expected a flash notice on this page, none found."
    page.status_code.must_equal 200
  end
end
