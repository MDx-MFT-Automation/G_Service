require 'test_helper'

class WorkOrderStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_order_status = work_order_statuses(:one)
  end

  test "should get index" do
    get work_order_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_work_order_status_url
    assert_response :success
  end

  test "should create work_order_status" do
    assert_difference('WorkOrderStatus.count') do
      post work_order_statuses_url, params: { work_order_status: { Status: @work_order_status.Status } }
    end

    assert_redirected_to work_order_status_url(WorkOrderStatus.last)
  end

  test "should show work_order_status" do
    get work_order_status_url(@work_order_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_order_status_url(@work_order_status)
    assert_response :success
  end

  test "should update work_order_status" do
    patch work_order_status_url(@work_order_status), params: { work_order_status: { Status: @work_order_status.Status } }
    assert_redirected_to work_order_status_url(@work_order_status)
  end

  test "should destroy work_order_status" do
    assert_difference('WorkOrderStatus.count', -1) do
      delete work_order_status_url(@work_order_status)
    end

    assert_redirected_to work_order_statuses_url
  end
end
