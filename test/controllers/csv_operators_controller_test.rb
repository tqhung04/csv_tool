require 'test_helper'

class CsvOperatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @csv_operator = csv_operators(:one)
  end

  test "should get index" do
    get csv_operators_url
    assert_response :success
  end

  test "should get new" do
    get new_csv_operator_url
    assert_response :success
  end

  test "should create csv_operator" do
    assert_difference('CsvOperator.count') do
      post csv_operators_url, params: { csv_operator: { name: @csv_operator.name, type: @csv_operator.type } }
    end

    assert_redirected_to csv_operator_url(CsvOperator.last)
  end

  test "should show csv_operator" do
    get csv_operator_url(@csv_operator)
    assert_response :success
  end

  test "should get edit" do
    get edit_csv_operator_url(@csv_operator)
    assert_response :success
  end

  test "should update csv_operator" do
    patch csv_operator_url(@csv_operator), params: { csv_operator: { name: @csv_operator.name, type: @csv_operator.type } }
    assert_redirected_to csv_operator_url(@csv_operator)
  end

  test "should destroy csv_operator" do
    assert_difference('CsvOperator.count', -1) do
      delete csv_operator_url(@csv_operator)
    end

    assert_redirected_to csv_operators_url
  end
end
