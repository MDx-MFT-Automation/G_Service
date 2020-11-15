require 'test_helper'

class WorkOrderDurationTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_order_duration_type = work_order_duration_types(:one)
  end

  test "should get index" do
    get work_order_duration_types_url
    assert_response :success
  end

  test "should get new" do
    get new_work_order_duration_type_url
    assert_response :success
  end

  test "should create work_order_duration_type" do
    assert_difference('WorkOrderDurationType.count') do
      post work_order_duration_types_url, params: { work_order_duration_type: { SAP_Code: @work_order_duration_type.SAP_Code, SAP_Description: @work_order_duration_type.SAP_Description, SAP_Material_Number: @work_order_duration_type.SAP_Material_Number, ServiceMax_Description: @work_order_duration_type.ServiceMax_Description } }
    end

    assert_redirected_to work_order_duration_type_url(WorkOrderDurationType.last)
  end

  test "should show work_order_duration_type" do
    get work_order_duration_type_url(@work_order_duration_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_order_duration_type_url(@work_order_duration_type)
    assert_response :success
  end

  test "should update work_order_duration_type" do
    patch work_order_duration_type_url(@work_order_duration_type), params: { work_order_duration_type: { SAP_Code: @work_order_duration_type.SAP_Code, SAP_Description: @work_order_duration_type.SAP_Description, SAP_Material_Number: @work_order_duration_type.SAP_Material_Number, ServiceMax_Description: @work_order_duration_type.ServiceMax_Description } }
    assert_redirected_to work_order_duration_type_url(@work_order_duration_type)
  end

  test "should destroy work_order_duration_type" do
    assert_difference('WorkOrderDurationType.count', -1) do
      delete work_order_duration_type_url(@work_order_duration_type)
    end

    assert_redirected_to work_order_duration_types_url
  end
end
