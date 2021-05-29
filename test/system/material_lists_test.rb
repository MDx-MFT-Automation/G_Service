require "application_system_test_case"

class MaterialListsTest < ApplicationSystemTestCase
  setup do
    @material_list = material_lists(:one)
  end

  test "visiting the index" do
    visit material_lists_url
    assert_selector "h1", text: "Material Lists"
  end

  test "creating a Material list" do
    visit material_lists_url
    click_on "New Material List"

    fill_in "Description", with: @material_list.description
    fill_in "Instrument", with: @material_list.instrument_id
    fill_in "Name", with: @material_list.name
    click_on "Create Material list"

    assert_text "Material list was successfully created"
    click_on "Back"
  end

  test "updating a Material list" do
    visit material_lists_url
    click_on "Edit", match: :first

    fill_in "Description", with: @material_list.description
    fill_in "Instrument", with: @material_list.instrument_id
    fill_in "Name", with: @material_list.name
    click_on "Update Material list"

    assert_text "Material list was successfully updated"
    click_on "Back"
  end

  test "destroying a Material list" do
    visit material_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Material list was successfully destroyed"
  end
end
