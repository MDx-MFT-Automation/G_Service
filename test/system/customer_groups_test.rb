require "application_system_test_case"

class CustomerGroupsTest < ApplicationSystemTestCase
  setup do
    @customer_group = customer_groups(:one)
  end

  test "visiting the index" do
    visit customer_groups_url
    assert_selector "h1", text: "Customer Groups"
  end

  test "creating a Customer group" do
    visit customer_groups_url
    click_on "New Customer Group"

    fill_in "Customer group  name chinese", with: @customer_group.Customer_Group__Name_Chinese
    fill_in "Customer group  name english", with: @customer_group.Customer_Group__Name_English
    click_on "Create Customer group"

    assert_text "Customer group was successfully created"
    click_on "Back"
  end

  test "updating a Customer group" do
    visit customer_groups_url
    click_on "Edit", match: :first

    fill_in "Customer group  name chinese", with: @customer_group.Customer_Group__Name_Chinese
    fill_in "Customer group  name english", with: @customer_group.Customer_Group__Name_English
    click_on "Update Customer group"

    assert_text "Customer group was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer group" do
    visit customer_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer group was successfully destroyed"
  end
end
