require "application_system_test_case"

class CsvAttributeFiltersTest < ApplicationSystemTestCase
  setup do
    @csv_attribute_filter = csv_attribute_filters(:one)
  end

  test "visiting the index" do
    visit csv_attribute_filters_url
    assert_selector "h1", text: "Csv Attribute Filters"
  end

  test "creating a Csv attribute filter" do
    visit csv_attribute_filters_url
    click_on "New Csv Attribute Filter"

    fill_in "Csv attribute", with: @csv_attribute_filter.csv_attribute_id
    fill_in "Csv filter", with: @csv_attribute_filter.csv_filter_id
    click_on "Create Csv attribute filter"

    assert_text "Csv attribute filter was successfully created"
    click_on "Back"
  end

  test "updating a Csv attribute filter" do
    visit csv_attribute_filters_url
    click_on "Edit", match: :first

    fill_in "Csv attribute", with: @csv_attribute_filter.csv_attribute_id
    fill_in "Csv filter", with: @csv_attribute_filter.csv_filter_id
    click_on "Update Csv attribute filter"

    assert_text "Csv attribute filter was successfully updated"
    click_on "Back"
  end

  test "destroying a Csv attribute filter" do
    visit csv_attribute_filters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Csv attribute filter was successfully destroyed"
  end
end
