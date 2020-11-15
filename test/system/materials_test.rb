require "application_system_test_case"

class MaterialsTest < ApplicationSystemTestCase
  setup do
    @material = materials(:one)
  end

  test "visiting the index" do
    visit materials_url
    assert_selector "h1", text: "Materials"
  end

  test "creating a Material" do
    visit materials_url
    click_on "New Material"

    fill_in "Comment", with: @material.Comment
    fill_in "Expiration date", with: @material.Expiration_Date
    fill_in "Lot or serial number", with: @material.Lot_Or_Serial_Number
    fill_in "Manufacture date", with: @material.Manufacture_Date
    fill_in "Material type", with: @material.Material_Type_id
    click_on "Create Material"

    assert_text "Material was successfully created"
    click_on "Back"
  end

  test "updating a Material" do
    visit materials_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @material.Comment
    fill_in "Expiration date", with: @material.Expiration_Date
    fill_in "Lot or serial number", with: @material.Lot_Or_Serial_Number
    fill_in "Manufacture date", with: @material.Manufacture_Date
    fill_in "Material type", with: @material.Material_Type_id
    click_on "Update Material"

    assert_text "Material was successfully updated"
    click_on "Back"
  end

  test "destroying a Material" do
    visit materials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Material was successfully destroyed"
  end
end
