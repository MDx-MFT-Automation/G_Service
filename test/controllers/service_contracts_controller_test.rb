require 'test_helper'

class ServiceContractsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_contract = service_contracts(:one)
  end

  test "should get index" do
    get service_contracts_url
    assert_response :success
  end

  test "should get new" do
    get new_service_contract_url
    assert_response :success
  end

  test "should create service_contract" do
    assert_difference('ServiceContract.count') do
      post service_contracts_url, params: { service_contract: { Comment: @service_contract.Comment, End_Date: @service_contract.End_Date, SAP_ServiceContract_Number: @service_contract.SAP_ServiceContract_Number, Start_Date: @service_contract.Start_Date, instrument_id: @service_contract.instrument_id, price: @service_contract.price, service_contract_type_id: @service_contract.service_contract_type_id } }
    end

    assert_redirected_to service_contract_url(ServiceContract.last)
  end

  test "should show service_contract" do
    get service_contract_url(@service_contract)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_contract_url(@service_contract)
    assert_response :success
  end

  test "should update service_contract" do
    patch service_contract_url(@service_contract), params: { service_contract: { Comment: @service_contract.Comment, End_Date: @service_contract.End_Date, SAP_ServiceContract_Number: @service_contract.SAP_ServiceContract_Number, Start_Date: @service_contract.Start_Date, instrument_id: @service_contract.instrument_id, price: @service_contract.price, service_contract_type_id: @service_contract.service_contract_type_id } }
    assert_redirected_to service_contract_url(@service_contract)
  end

  test "should destroy service_contract" do
    assert_difference('ServiceContract.count', -1) do
      delete service_contract_url(@service_contract)
    end

    assert_redirected_to service_contracts_url
  end
end
