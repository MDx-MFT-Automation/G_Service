require 'test_helper'

class WorkOrderTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_order_type = work_order_types(:one)
  end

  test "should get index" do
    get work_order_types_url
    assert_response :success
  end

  test "should get new" do
    get new_work_order_type_url
    assert_response :success
  end

  test "should create work_order_type" do
    assert_difference('WorkOrderType.count') do
      post work_order_types_url, params: { work_order_type: { Work_Type_Name: @work_order_type.Work_Type_Name } }
    end

    assert_redirected_to work_order_type_url(WorkOrderType.last)
  end

  test "should show work_order_type" do
    get work_order_type_url(@work_order_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_order_type_url(@work_order_type)
    assert_response :success
  end

  test "should update work_order_type" do
    patch work_order_type_url(@work_order_type), params: { work_order_type: { Work_Type_Name: @work_order_type.Work_Type_Name } }
    assert_redirected_to work_order_type_url(@work_order_type)
  end

  test "should destroy work_order_type" do
    assert_difference('WorkOrderType.count', -1) do
      delete work_order_type_url(@work_order_type)
    end

    assert_redirected_to work_order_types_url
  end
end
