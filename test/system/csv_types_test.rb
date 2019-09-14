require "application_system_test_case"

class CsvTypesTest < ApplicationSystemTestCase
  setup do
    @csv_type = csv_types(:one)
  end

  test "visiting the index" do
    visit csv_types_url
    assert_selector "h1", text: "Csv Types"
  end

  test "creating a Csv type" do
    visit csv_types_url
    click_on "New Csv Type"

    fill_in "Name", with: @csv_type.name
    fill_in "Project", with: @csv_type.project_id
    click_on "Create Csv type"

    assert_text "Csv type was successfully created"
    click_on "Back"
  end

  test "updating a Csv type" do
    visit csv_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @csv_type.name
    fill_in "Project", with: @csv_type.project_id
    click_on "Update Csv type"

    assert_text "Csv type was successfully updated"
    click_on "Back"
  end

  test "destroying a Csv type" do
    visit csv_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Csv type was successfully destroyed"
  end
end
