require 'test_helper'

class CustomerGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_group = customer_groups(:one)
  end

  test "should get index" do
    get customer_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_group_url
    assert_response :success
  end

  test "should create customer_group" do
    assert_difference('CustomerGroup.count') do
      post customer_groups_url, params: { customer_group: { Customer_Group__Name_Chinese: @customer_group.Customer_Group__Name_Chinese, Customer_Group__Name_English: @customer_group.Customer_Group__Name_English } }
    end

    assert_redirected_to customer_group_url(CustomerGroup.last)
  end

  test "should show customer_group" do
    get customer_group_url(@customer_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_group_url(@customer_group)
    assert_response :success
  end

  test "should update customer_group" do
    patch customer_group_url(@customer_group), params: { customer_group: { Customer_Group__Name_Chinese: @customer_group.Customer_Group__Name_Chinese, Customer_Group__Name_English: @customer_group.Customer_Group__Name_English } }
    assert_redirected_to customer_group_url(@customer_group)
  end

  test "should destroy customer_group" do
    assert_difference('CustomerGroup.count', -1) do
      delete customer_group_url(@customer_group)
    end

    assert_redirected_to customer_groups_url
  end
end
