require "application_system_test_case"

class SoftwareVersionsTest < ApplicationSystemTestCase
  setup do
    @software_version = software_versions(:one)
  end

  test "visiting the index" do
    visit software_versions_url
    assert_selector "h1", text: "Software Versions"
  end

  test "creating a Software version" do
    visit software_versions_url
    click_on "New Software Version"

    fill_in "Software name", with: @software_version.Software_Name
    fill_in "Version number", with: @software_version.Version_Number
    click_on "Create Software version"

    assert_text "Software version was successfully created"
    click_on "Back"
  end

  test "updating a Software version" do
    visit software_versions_url
    click_on "Edit", match: :first

    fill_in "Software name", with: @software_version.Software_Name
    fill_in "Version number", with: @software_version.Version_Number
    click_on "Update Software version"

    assert_text "Software version was successfully updated"
    click_on "Back"
  end

  test "destroying a Software version" do
    visit software_versions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Software version was successfully destroyed"
  end
end
