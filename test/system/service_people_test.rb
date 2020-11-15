require "application_system_test_case"

class ServicePeopleTest < ApplicationSystemTestCase
  setup do
    @service_person = service_people(:one)
  end

  test "visiting the index" do
    visit service_people_url
    assert_selector "h1", text: "Service People"
  end

  test "creating a Service person" do
    visit service_people_url
    click_on "New Service Person"

    fill_in "Comment", with: @service_person.comment
    fill_in "Contact person", with: @service_person.contact_person_id
    click_on "Create Service person"

    assert_text "Service person was successfully created"
    click_on "Back"
  end

  test "updating a Service person" do
    visit service_people_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @service_person.comment
    fill_in "Contact person", with: @service_person.contact_person_id
    click_on "Update Service person"

    assert_text "Service person was successfully updated"
    click_on "Back"
  end

  test "destroying a Service person" do
    visit service_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service person was successfully destroyed"
  end
end
