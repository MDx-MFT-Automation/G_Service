require "application_system_test_case"

class WorkOrderStatusesTest < ApplicationSystemTestCase
  setup do
    @work_order_status = work_order_statuses(:one)
  end

  test "visiting the index" do
    visit work_order_statuses_url
    assert_selector "h1", text: "Work Order Statuses"
  end

  test "creating a Work order status" do
    visit work_order_statuses_url
    click_on "New Work Order Status"

    fill_in "Status", with: @work_order_status.Status
    click_on "Create Work order status"

    assert_text "Work order status was successfully created"
    click_on "Back"
  end

  test "updating a Work order status" do
    visit work_order_statuses_url
    click_on "Edit", match: :first

    fill_in "Status", with: @work_order_status.Status
    click_on "Update Work order status"

    assert_text "Work order status was successfully updated"
    click_on "Back"
  end

  test "destroying a Work order status" do
    visit work_order_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work order status was successfully destroyed"
  end
end
