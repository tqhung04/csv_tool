require 'test_helper'

class CsvAttributeFiltersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @csv_attribute_filter = csv_attribute_filters(:one)
  end

  test "should get index" do
    get csv_attribute_filters_url
    assert_response :success
  end

  test "should get new" do
    get new_csv_attribute_filter_url
    assert_response :success
  end

  test "should create csv_attribute_filter" do
    assert_difference('CsvAttributeFilter.count') do
      post csv_attribute_filters_url, params: { csv_attribute_filter: { csv_attribute_id: @csv_attribute_filter.csv_attribute_id, csv_filter_id: @csv_attribute_filter.csv_filter_id } }
    end

    assert_redirected_to csv_attribute_filter_url(CsvAttributeFilter.last)
  end

  test "should show csv_attribute_filter" do
    get csv_attribute_filter_url(@csv_attribute_filter)
    assert_response :success
  end

  test "should get edit" do
    get edit_csv_attribute_filter_url(@csv_attribute_filter)
    assert_response :success
  end

  test "should update csv_attribute_filter" do
    patch csv_attribute_filter_url(@csv_attribute_filter), params: { csv_attribute_filter: { csv_attribute_id: @csv_attribute_filter.csv_attribute_id, csv_filter_id: @csv_attribute_filter.csv_filter_id } }
    assert_redirected_to csv_attribute_filter_url(@csv_attribute_filter)
  end

  test "should destroy csv_attribute_filter" do
    assert_difference('CsvAttributeFilter.count', -1) do
      delete csv_attribute_filter_url(@csv_attribute_filter)
    end

    assert_redirected_to csv_attribute_filters_url
  end
end
