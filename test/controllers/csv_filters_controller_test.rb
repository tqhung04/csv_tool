require 'test_helper'

class CsvFiltersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @csv_filter = csv_filters(:one)
  end

  test "should get index" do
    get csv_filters_url
    assert_response :success
  end

  test "should get new" do
    get new_csv_filter_url
    assert_response :success
  end

  test "should create csv_filter" do
    assert_difference('CsvFilter.count') do
      post csv_filters_url, params: { csv_filter: { name: @csv_filter.name, type: @csv_filter.type } }
    end

    assert_redirected_to csv_filter_url(CsvFilter.last)
  end

  test "should show csv_filter" do
    get csv_filter_url(@csv_filter)
    assert_response :success
  end

  test "should get edit" do
    get edit_csv_filter_url(@csv_filter)
    assert_response :success
  end

  test "should update csv_filter" do
    patch csv_filter_url(@csv_filter), params: { csv_filter: { name: @csv_filter.name, type: @csv_filter.type } }
    assert_redirected_to csv_filter_url(@csv_filter)
  end

  test "should destroy csv_filter" do
    assert_difference('CsvFilter.count', -1) do
      delete csv_filter_url(@csv_filter)
    end

    assert_redirected_to csv_filters_url
  end
end
