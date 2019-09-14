require 'test_helper'

class CsvTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @csv_type = csv_types(:one)
  end

  test "should get index" do
    get csv_types_url
    assert_response :success
  end

  test "should get new" do
    get new_csv_type_url
    assert_response :success
  end

  test "should create csv_type" do
    assert_difference('CsvType.count') do
      post csv_types_url, params: { csv_type: { name: @csv_type.name, project_id: @csv_type.project_id } }
    end

    assert_redirected_to csv_type_url(CsvType.last)
  end

  test "should show csv_type" do
    get csv_type_url(@csv_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_csv_type_url(@csv_type)
    assert_response :success
  end

  test "should update csv_type" do
    patch csv_type_url(@csv_type), params: { csv_type: { name: @csv_type.name, project_id: @csv_type.project_id } }
    assert_redirected_to csv_type_url(@csv_type)
  end

  test "should destroy csv_type" do
    assert_difference('CsvType.count', -1) do
      delete csv_type_url(@csv_type)
    end

    assert_redirected_to csv_types_url
  end
end
