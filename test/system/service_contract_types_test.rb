require "application_system_test_case"

class ServiceContractTypesTest < ApplicationSystemTestCase
  setup do
    @service_contract_type = service_contract_types(:one)
  end

  test "visiting the index" do
    visit service_contract_types_url
    assert_selector "h1", text: "Service Contract Types"
  end

  test "creating a Service contract type" do
    visit service_contract_types_url
    click_on "New Service Contract Type"

    fill_in "Description", with: @service_contract_type.Description
    fill_in "Name", with: @service_contract_type.Name
    click_on "Create Service contract type"

    assert_text "Service contract type was successfully created"
    click_on "Back"
  end

  test "updating a Service contract type" do
    visit service_contract_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @service_contract_type.Description
    fill_in "Name", with: @service_contract_type.Name
    click_on "Update Service contract type"

    assert_text "Service contract type was successfully updated"
    click_on "Back"
  end

  test "destroying a Service contract type" do
    visit service_contract_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service contract type was successfully destroyed"
  end
end
