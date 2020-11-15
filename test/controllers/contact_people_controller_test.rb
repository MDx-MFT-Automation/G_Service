require 'test_helper'

class ContactPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_person = contact_people(:one)
  end

  test "should get index" do
    get contact_people_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_person_url
    assert_response :success
  end

  test "should create contact_person" do
    assert_difference('ContactPerson.count') do
      post contact_people_url, params: { contact_person: { Chinese_Family_Name: @contact_person.Chinese_Family_Name, Chinese_Given_Name: @contact_person.Chinese_Given_Name, English_Family_Name: @contact_person.English_Family_Name, English_Given_Name: @contact_person.English_Given_Name, English_Middle_Name: @contact_person.English_Middle_Name } }
    end

    assert_redirected_to contact_person_url(ContactPerson.last)
  end

  test "should show contact_person" do
    get contact_person_url(@contact_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_person_url(@contact_person)
    assert_response :success
  end

  test "should update contact_person" do
    patch contact_person_url(@contact_person), params: { contact_person: { Chinese_Family_Name: @contact_person.Chinese_Family_Name, Chinese_Given_Name: @contact_person.Chinese_Given_Name, English_Family_Name: @contact_person.English_Family_Name, English_Given_Name: @contact_person.English_Given_Name, English_Middle_Name: @contact_person.English_Middle_Name } }
    assert_redirected_to contact_person_url(@contact_person)
  end

  test "should destroy contact_person" do
    assert_difference('ContactPerson.count', -1) do
      delete contact_person_url(@contact_person)
    end

    assert_redirected_to contact_people_url
  end
end
