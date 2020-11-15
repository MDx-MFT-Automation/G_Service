require 'test_helper'

class ServicePeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_person = service_people(:one)
  end

  test "should get index" do
    get service_people_url
    assert_response :success
  end

  test "should get new" do
    get new_service_person_url
    assert_response :success
  end

  test "should create service_person" do
    assert_difference('ServicePerson.count') do
      post service_people_url, params: { service_person: { comment: @service_person.comment, contact_person_id: @service_person.contact_person_id } }
    end

    assert_redirected_to service_person_url(ServicePerson.last)
  end

  test "should show service_person" do
    get service_person_url(@service_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_person_url(@service_person)
    assert_response :success
  end

  test "should update service_person" do
    patch service_person_url(@service_person), params: { service_person: { comment: @service_person.comment, contact_person_id: @service_person.contact_person_id } }
    assert_redirected_to service_person_url(@service_person)
  end

  test "should destroy service_person" do
    assert_difference('ServicePerson.count', -1) do
      delete service_person_url(@service_person)
    end

    assert_redirected_to service_people_url
  end
end
