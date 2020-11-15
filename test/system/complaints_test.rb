require "application_system_test_case"

class ComplaintsTest < ApplicationSystemTestCase
  setup do
    @complaint = complaints(:one)
  end

  test "visiting the index" do
    visit complaints_url
    assert_selector "h1", text: "Complaints"
  end

  test "creating a Complaint" do
    visit complaints_url
    click_on "New Complaint"

    fill_in "Sap complaint notification number", with: @complaint.SAP_Complaint_Notification_Number
    fill_in "Short description", with: @complaint.Short_Description
    fill_in "Complain status", with: @complaint.complain_status_id
    click_on "Create Complaint"

    assert_text "Complaint was successfully created"
    click_on "Back"
  end

  test "updating a Complaint" do
    visit complaints_url
    click_on "Edit", match: :first

    fill_in "Sap complaint notification number", with: @complaint.SAP_Complaint_Notification_Number
    fill_in "Short description", with: @complaint.Short_Description
    fill_in "Complain status", with: @complaint.complain_status_id
    click_on "Update Complaint"

    assert_text "Complaint was successfully updated"
    click_on "Back"
  end

  test "destroying a Complaint" do
    visit complaints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Complaint was successfully destroyed"
  end
end
