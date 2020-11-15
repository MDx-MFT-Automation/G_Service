require "application_system_test_case"

class WorkOrderTypesTest < ApplicationSystemTestCase
  setup do
    @work_order_type = work_order_types(:one)
  end

  test "visiting the index" do
    visit work_order_types_url
    assert_selector "h1", text: "Work Order Types"
  end

  test "creating a Work order type" do
    visit work_order_types_url
    click_on "New Work Order Type"

    fill_in "Work type name", with: @work_order_type.Work_Type_Name
    click_on "Create Work order type"

    assert_text "Work order type was successfully created"
    click_on "Back"
  end

  test "updating a Work order type" do
    visit work_order_types_url
    click_on "Edit", match: :first

    fill_in "Work type name", with: @work_order_type.Work_Type_Name
    click_on "Update Work order type"

    assert_text "Work order type was successfully updated"
    click_on "Back"
  end

  test "destroying a Work order type" do
    visit work_order_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work order type was successfully destroyed"
  end
end
