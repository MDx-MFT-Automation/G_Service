require "application_system_test_case"

class WorkOrderDurationsTest < ApplicationSystemTestCase
  setup do
    @work_order_duration = work_order_durations(:one)
  end

  test "visiting the index" do
    visit work_order_durations_url
    assert_selector "h1", text: "Work Order Durations"
  end

  test "creating a Work order duration" do
    visit work_order_durations_url
    click_on "New Work Order Duration"

    fill_in "Actual end date", with: @work_order_duration.Actual_End_Date
    fill_in "Actual start date", with: @work_order_duration.Actual_Start_Date
    fill_in "Actual time", with: @work_order_duration.Actual_Time
    fill_in "Description", with: @work_order_duration.Description
    fill_in "Work order duration type", with: @work_order_duration.work_order_duration_type_id
    fill_in "Work order", with: @work_order_duration.work_order_id
    click_on "Create Work order duration"

    assert_text "Work order duration was successfully created"
    click_on "Back"
  end

  test "updating a Work order duration" do
    visit work_order_durations_url
    click_on "Edit", match: :first

    fill_in "Actual end date", with: @work_order_duration.Actual_End_Date
    fill_in "Actual start date", with: @work_order_duration.Actual_Start_Date
    fill_in "Actual time", with: @work_order_duration.Actual_Time
    fill_in "Description", with: @work_order_duration.Description
    fill_in "Work order duration type", with: @work_order_duration.work_order_duration_type_id
    fill_in "Work order", with: @work_order_duration.work_order_id
    click_on "Update Work order duration"

    assert_text "Work order duration was successfully updated"
    click_on "Back"
  end

  test "destroying a Work order duration" do
    visit work_order_durations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work order duration was successfully destroyed"
  end
end
