require "application_system_test_case"

class WorkOrderDurationTypesTest < ApplicationSystemTestCase
  setup do
    @work_order_duration_type = work_order_duration_types(:one)
  end

  test "visiting the index" do
    visit work_order_duration_types_url
    assert_selector "h1", text: "Work Order Duration Types"
  end

  test "creating a Work order duration type" do
    visit work_order_duration_types_url
    click_on "New Work Order Duration Type"

    fill_in "Sap code", with: @work_order_duration_type.SAP_Code
    fill_in "Sap description", with: @work_order_duration_type.SAP_Description
    fill_in "Sap material number", with: @work_order_duration_type.SAP_Material_Number
    fill_in "Servicemax description", with: @work_order_duration_type.ServiceMax_Description
    click_on "Create Work order duration type"

    assert_text "Work order duration type was successfully created"
    click_on "Back"
  end

  test "updating a Work order duration type" do
    visit work_order_duration_types_url
    click_on "Edit", match: :first

    fill_in "Sap code", with: @work_order_duration_type.SAP_Code
    fill_in "Sap description", with: @work_order_duration_type.SAP_Description
    fill_in "Sap material number", with: @work_order_duration_type.SAP_Material_Number
    fill_in "Servicemax description", with: @work_order_duration_type.ServiceMax_Description
    click_on "Update Work order duration type"

    assert_text "Work order duration type was successfully updated"
    click_on "Back"
  end

  test "destroying a Work order duration type" do
    visit work_order_duration_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work order duration type was successfully destroyed"
  end
end
