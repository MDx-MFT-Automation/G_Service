require 'test_helper'

class WorkOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_order = work_orders(:one)
  end

  test "should get index" do
    get work_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_work_order_url
    assert_response :success
  end

  test "should create work_order" do
    assert_difference('WorkOrder.count') do
      post work_orders_url, params: { work_order: { Cost_SAP: @work_order.Cost_SAP, Cost_ServiceMax: @work_order.Cost_ServiceMax, SAP_WorkOrder_Number: @work_order.SAP_WorkOrder_Number, ServiceMax_WorkOrder_Number: @work_order.ServiceMax_WorkOrder_Number, customer_id: @work_order.customer_id, details: @work_order.details, instrument_id: @work_order.instrument_id, service_person_id: @work_order.service_person_id, work_order_status_id: @work_order.work_order_status_id } }
    end

    assert_redirected_to work_order_url(WorkOrder.last)
  end

  test "should show work_order" do
    get work_order_url(@work_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_order_url(@work_order)
    assert_response :success
  end

  test "should update work_order" do
    patch work_order_url(@work_order), params: { work_order: { Cost_SAP: @work_order.Cost_SAP, Cost_ServiceMax: @work_order.Cost_ServiceMax, SAP_WorkOrder_Number: @work_order.SAP_WorkOrder_Number, ServiceMax_WorkOrder_Number: @work_order.ServiceMax_WorkOrder_Number, customer_id: @work_order.customer_id, details: @work_order.details, instrument_id: @work_order.instrument_id, service_person_id: @work_order.service_person_id, work_order_status_id: @work_order.work_order_status_id } }
    assert_redirected_to work_order_url(@work_order)
  end

  test "should destroy work_order" do
    assert_difference('WorkOrder.count', -1) do
      delete work_order_url(@work_order)
    end

    assert_redirected_to work_orders_url
  end
end
