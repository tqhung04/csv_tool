require "application_system_test_case"

class CsvFiltersTest < ApplicationSystemTestCase
  setup do
    @csv_filter = csv_filters(:one)
  end

  test "visiting the index" do
    visit csv_filters_url
    assert_selector "h1", text: "Csv Filters"
  end

  test "creating a Csv filter" do
    visit csv_filters_url
    click_on "New Csv Filter"

    fill_in "Name", with: @csv_filter.name
    fill_in "Type", with: @csv_filter.type
    click_on "Create Csv filter"

    assert_text "Csv filter was successfully created"
    click_on "Back"
  end

  test "updating a Csv filter" do
    visit csv_filters_url
    click_on "Edit", match: :first

    fill_in "Name", with: @csv_filter.name
    fill_in "Type", with: @csv_filter.type
    click_on "Update Csv filter"

    assert_text "Csv filter was successfully updated"
    click_on "Back"
  end

  test "destroying a Csv filter" do
    visit csv_filters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Csv filter was successfully destroyed"
  end
end
