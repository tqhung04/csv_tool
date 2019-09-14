require "application_system_test_case"

class CsvAttributesTest < ApplicationSystemTestCase
  setup do
    @csv_attribute = csv_attributes(:one)
  end

  test "visiting the index" do
    visit csv_attributes_url
    assert_selector "h1", text: "Csv Attributes"
  end

  test "creating a Csv attribute" do
    visit csv_attributes_url
    click_on "New Csv Attribute"

    fill_in "Csv type", with: @csv_attribute.csv_type_id
    fill_in "Name", with: @csv_attribute.name
    click_on "Create Csv attribute"

    assert_text "Csv attribute was successfully created"
    click_on "Back"
  end

  test "updating a Csv attribute" do
    visit csv_attributes_url
    click_on "Edit", match: :first

    fill_in "Csv type", with: @csv_attribute.csv_type_id
    fill_in "Name", with: @csv_attribute.name
    click_on "Update Csv attribute"

    assert_text "Csv attribute was successfully updated"
    click_on "Back"
  end

  test "destroying a Csv attribute" do
    visit csv_attributes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Csv attribute was successfully destroyed"
  end
end
