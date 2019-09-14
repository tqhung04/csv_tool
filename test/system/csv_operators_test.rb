require "application_system_test_case"

class CsvOperatorsTest < ApplicationSystemTestCase
  setup do
    @csv_operator = csv_operators(:one)
  end

  test "visiting the index" do
    visit csv_operators_url
    assert_selector "h1", text: "Csv Operators"
  end

  test "creating a Csv operator" do
    visit csv_operators_url
    click_on "New Csv Operator"

    fill_in "Name", with: @csv_operator.name
    fill_in "Type", with: @csv_operator.type
    click_on "Create Csv operator"

    assert_text "Csv operator was successfully created"
    click_on "Back"
  end

  test "updating a Csv operator" do
    visit csv_operators_url
    click_on "Edit", match: :first

    fill_in "Name", with: @csv_operator.name
    fill_in "Type", with: @csv_operator.type
    click_on "Update Csv operator"

    assert_text "Csv operator was successfully updated"
    click_on "Back"
  end

  test "destroying a Csv operator" do
    visit csv_operators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Csv operator was successfully destroyed"
  end
end
