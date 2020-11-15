require 'test_helper'

class ServiceContractTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_contract_type = service_contract_types(:one)
  end

  test "should get index" do
    get service_contract_types_url
    assert_response :success
  end

  test "should get new" do
    get new_service_contract_type_url
    assert_response :success
  end

  test "should create service_contract_type" do
    assert_difference('ServiceContractType.count') do
      post service_contract_types_url, params: { service_contract_type: { Description: @service_contract_type.Description, Name: @service_contract_type.Name } }
    end

    assert_redirected_to service_contract_type_url(ServiceContractType.last)
  end

  test "should show service_contract_type" do
    get service_contract_type_url(@service_contract_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_contract_type_url(@service_contract_type)
    assert_response :success
  end

  test "should update service_contract_type" do
    patch service_contract_type_url(@service_contract_type), params: { service_contract_type: { Description: @service_contract_type.Description, Name: @service_contract_type.Name } }
    assert_redirected_to service_contract_type_url(@service_contract_type)
  end

  test "should destroy service_contract_type" do
    assert_difference('ServiceContractType.count', -1) do
      delete service_contract_type_url(@service_contract_type)
    end

    assert_redirected_to service_contract_types_url
  end
end
