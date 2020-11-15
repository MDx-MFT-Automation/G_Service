require "application_system_test_case"

class WorkOrdersTest < ApplicationSystemTestCase
  setup do
    @work_order = work_orders(:one)
  end

  test "visiting the index" do
    visit work_orders_url
    assert_selector "h1", text: "Work Orders"
  end

  test "creating a Work order" do
    visit work_orders_url
    click_on "New Work Order"

    fill_in "Cost sap", with: @work_order.Cost_SAP
    fill_in "Cost servicemax", with: @work_order.Cost_ServiceMax
    fill_in "Sap workorder number", with: @work_order.SAP_WorkOrder_Number
    fill_in "Servicemax workorder number", with: @work_order.ServiceMax_WorkOrder_Number
    fill_in "Customer", with: @work_order.customer_id
    fill_in "Details", with: @work_order.details
    fill_in "Instrument", with: @work_order.instrument_id
    fill_in "Service person", with: @work_order.service_person_id
    fill_in "Work order status", with: @work_order.work_order_status_id
    click_on "Create Work order"

    assert_text "Work order was successfully created"
    click_on "Back"
  end

  test "updating a Work order" do
    visit work_orders_url
    click_on "Edit", match: :first

    fill_in "Cost sap", with: @work_order.Cost_SAP
    fill_in "Cost servicemax", with: @work_order.Cost_ServiceMax
    fill_in "Sap workorder number", with: @work_order.SAP_WorkOrder_Number
    fill_in "Servicemax workorder number", with: @work_order.ServiceMax_WorkOrder_Number
    fill_in "Customer", with: @work_order.customer_id
    fill_in "Details", with: @work_order.details
    fill_in "Instrument", with: @work_order.instrument_id
    fill_in "Service person", with: @work_order.service_person_id
    fill_in "Work order status", with: @work_order.work_order_status_id
    click_on "Update Work order"

    assert_text "Work order was successfully updated"
    click_on "Back"
  end

  test "destroying a Work order" do
    visit work_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work order was successfully destroyed"
  end
end
