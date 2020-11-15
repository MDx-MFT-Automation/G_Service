require "application_system_test_case"

class ComplaintUpdatesTest < ApplicationSystemTestCase
  setup do
    @complaint_update = complaint_updates(:one)
  end

  test "visiting the index" do
    visit complaint_updates_url
    assert_selector "h1", text: "Complaint Updates"
  end

  test "creating a Complaint update" do
    visit complaint_updates_url
    click_on "New Complaint Update"

    fill_in "Description", with: @complaint_update.Description
    fill_in "Last updated on", with: @complaint_update.Last_Updated_On
    fill_in "Complain status", with: @complaint_update.complain_status_id
    fill_in "Complaint", with: @complaint_update.complaint_id
    click_on "Create Complaint update"

    assert_text "Complaint update was successfully created"
    click_on "Back"
  end

  test "updating a Complaint update" do
    visit complaint_updates_url
    click_on "Edit", match: :first

    fill_in "Description", with: @complaint_update.Description
    fill_in "Last updated on", with: @complaint_update.Last_Updated_On
    fill_in "Complain status", with: @complaint_update.complain_status_id
    fill_in "Complaint", with: @complaint_update.complaint_id
    click_on "Update Complaint update"

    assert_text "Complaint update was successfully updated"
    click_on "Back"
  end

  test "destroying a Complaint update" do
    visit complaint_updates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Complaint update was successfully destroyed"
  end
end
