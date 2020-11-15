require 'test_helper'

class WorkOrderDurationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_order_duration = work_order_durations(:one)
  end

  test "should get index" do
    get work_order_durations_url
    assert_response :success
  end

  test "should get new" do
    get new_work_order_duration_url
    assert_response :success
  end

  test "should create work_order_duration" do
    assert_difference('WorkOrderDuration.count') do
      post work_order_durations_url, params: { work_order_duration: { Actual_End_Date: @work_order_duration.Actual_End_Date, Actual_Start_Date: @work_order_duration.Actual_Start_Date, Actual_Time: @work_order_duration.Actual_Time, Description: @work_order_duration.Description, work_order_duration_type_id: @work_order_duration.work_order_duration_type_id, work_order_id: @work_order_duration.work_order_id } }
    end

    assert_redirected_to work_order_duration_url(WorkOrderDuration.last)
  end

  test "should show work_order_duration" do
    get work_order_duration_url(@work_order_duration)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_order_duration_url(@work_order_duration)
    assert_response :success
  end

  test "should update work_order_duration" do
    patch work_order_duration_url(@work_order_duration), params: { work_order_duration: { Actual_End_Date: @work_order_duration.Actual_End_Date, Actual_Start_Date: @work_order_duration.Actual_Start_Date, Actual_Time: @work_order_duration.Actual_Time, Description: @work_order_duration.Description, work_order_duration_type_id: @work_order_duration.work_order_duration_type_id, work_order_id: @work_order_duration.work_order_id } }
    assert_redirected_to work_order_duration_url(@work_order_duration)
  end

  test "should destroy work_order_duration" do
    assert_difference('WorkOrderDuration.count', -1) do
      delete work_order_duration_url(@work_order_duration)
    end

    assert_redirected_to work_order_durations_url
  end
end
