require 'test_helper'

class ComplainStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complain_status = complain_statuses(:one)
  end

  test "should get index" do
    get complain_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_complain_status_url
    assert_response :success
  end

  test "should create complain_status" do
    assert_difference('ComplainStatus.count') do
      post complain_statuses_url, params: { complain_status: { Status: @complain_status.Status } }
    end

    assert_redirected_to complain_status_url(ComplainStatus.last)
  end

  test "should show complain_status" do
    get complain_status_url(@complain_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_complain_status_url(@complain_status)
    assert_response :success
  end

  test "should update complain_status" do
    patch complain_status_url(@complain_status), params: { complain_status: { Status: @complain_status.Status } }
    assert_redirected_to complain_status_url(@complain_status)
  end

  test "should destroy complain_status" do
    assert_difference('ComplainStatus.count', -1) do
      delete complain_status_url(@complain_status)
    end

    assert_redirected_to complain_statuses_url
  end
end
