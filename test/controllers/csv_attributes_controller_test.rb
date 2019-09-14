require 'test_helper'

class CsvAttributesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @csv_attribute = csv_attributes(:one)
  end

  test "should get index" do
    get csv_attributes_url
    assert_response :success
  end

  test "should get new" do
    get new_csv_attribute_url
    assert_response :success
  end

  test "should create csv_attribute" do
    assert_difference('CsvAttribute.count') do
      post csv_attributes_url, params: { csv_attribute: { csv_type_id: @csv_attribute.csv_type_id, name: @csv_attribute.name } }
    end

    assert_redirected_to csv_attribute_url(CsvAttribute.last)
  end

  test "should show csv_attribute" do
    get csv_attribute_url(@csv_attribute)
    assert_response :success
  end

  test "should get edit" do
    get edit_csv_attribute_url(@csv_attribute)
    assert_response :success
  end

  test "should update csv_attribute" do
    patch csv_attribute_url(@csv_attribute), params: { csv_attribute: { csv_type_id: @csv_attribute.csv_type_id, name: @csv_attribute.name } }
    assert_redirected_to csv_attribute_url(@csv_attribute)
  end

  test "should destroy csv_attribute" do
    assert_difference('CsvAttribute.count', -1) do
      delete csv_attribute_url(@csv_attribute)
    end

    assert_redirected_to csv_attributes_url
  end
end
