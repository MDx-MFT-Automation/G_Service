require "application_system_test_case"

class ContactPeopleTest < ApplicationSystemTestCase
  setup do
    @contact_person = contact_people(:one)
  end

  test "visiting the index" do
    visit contact_people_url
    assert_selector "h1", text: "Contact People"
  end

  test "creating a Contact person" do
    visit contact_people_url
    click_on "New Contact Person"

    fill_in "Chinese family name", with: @contact_person.Chinese_Family_Name
    fill_in "Chinese given name", with: @contact_person.Chinese_Given_Name
    fill_in "English family name", with: @contact_person.English_Family_Name
    fill_in "English given name", with: @contact_person.English_Given_Name
    fill_in "English middle name", with: @contact_person.English_Middle_Name
    click_on "Create Contact person"

    assert_text "Contact person was successfully created"
    click_on "Back"
  end

  test "updating a Contact person" do
    visit contact_people_url
    click_on "Edit", match: :first

    fill_in "Chinese family name", with: @contact_person.Chinese_Family_Name
    fill_in "Chinese given name", with: @contact_person.Chinese_Given_Name
    fill_in "English family name", with: @contact_person.English_Family_Name
    fill_in "English given name", with: @contact_person.English_Given_Name
    fill_in "English middle name", with: @contact_person.English_Middle_Name
    click_on "Update Contact person"

    assert_text "Contact person was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact person" do
    visit contact_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact person was successfully destroyed"
  end
end
