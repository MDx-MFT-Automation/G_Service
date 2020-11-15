require 'test_helper'

class ComplaintUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complaint_update = complaint_updates(:one)
  end

  test "should get index" do
    get complaint_updates_url
    assert_response :success
  end

  test "should get new" do
    get new_complaint_update_url
    assert_response :success
  end

  test "should create complaint_update" do
    assert_difference('ComplaintUpdate.count') do
      post complaint_updates_url, params: { complaint_update: { Description: @complaint_update.Description, Last_Updated_On: @complaint_update.Last_Updated_On, complain_status_id: @complaint_update.complain_status_id, complaint_id: @complaint_update.complaint_id } }
    end

    assert_redirected_to complaint_update_url(ComplaintUpdate.last)
  end

  test "should show complaint_update" do
    get complaint_update_url(@complaint_update)
    assert_response :success
  end

  test "should get edit" do
    get edit_complaint_update_url(@complaint_update)
    assert_response :success
  end

  test "should update complaint_update" do
    patch complaint_update_url(@complaint_update), params: { complaint_update: { Description: @complaint_update.Description, Last_Updated_On: @complaint_update.Last_Updated_On, complain_status_id: @complaint_update.complain_status_id, complaint_id: @complaint_update.complaint_id } }
    assert_redirected_to complaint_update_url(@complaint_update)
  end

  test "should destroy complaint_update" do
    assert_difference('ComplaintUpdate.count', -1) do
      delete complaint_update_url(@complaint_update)
    end

    assert_redirected_to complaint_updates_url
  end
end
