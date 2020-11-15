require "application_system_test_case"

class ServiceContractsTest < ApplicationSystemTestCase
  setup do
    @service_contract = service_contracts(:one)
  end

  test "visiting the index" do
    visit service_contracts_url
    assert_selector "h1", text: "Service Contracts"
  end

  test "creating a Service contract" do
    visit service_contracts_url
    click_on "New Service Contract"

    fill_in "Comment", with: @service_contract.Comment
    fill_in "End date", with: @service_contract.End_Date
    fill_in "Sap servicecontract number", with: @service_contract.SAP_ServiceContract_Number
    fill_in "Start date", with: @service_contract.Start_Date
    fill_in "Instrument", with: @service_contract.instrument_id
    fill_in "Price", with: @service_contract.price
    fill_in "Service contract type", with: @service_contract.service_contract_type_id
    click_on "Create Service contract"

    assert_text "Service contract was successfully created"
    click_on "Back"
  end

  test "updating a Service contract" do
    visit service_contracts_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @service_contract.Comment
    fill_in "End date", with: @service_contract.End_Date
    fill_in "Sap servicecontract number", with: @service_contract.SAP_ServiceContract_Number
    fill_in "Start date", with: @service_contract.Start_Date
    fill_in "Instrument", with: @service_contract.instrument_id
    fill_in "Price", with: @service_contract.price
    fill_in "Service contract type", with: @service_contract.service_contract_type_id
    click_on "Update Service contract"

    assert_text "Service contract was successfully updated"
    click_on "Back"
  end

  test "destroying a Service contract" do
    visit service_contracts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service contract was successfully destroyed"
  end
end
