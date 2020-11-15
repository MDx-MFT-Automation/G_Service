require 'test_helper'

class SoftwareVersionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @software_version = software_versions(:one)
  end

  test "should get index" do
    get software_versions_url
    assert_response :success
  end

  test "should get new" do
    get new_software_version_url
    assert_response :success
  end

  test "should create software_version" do
    assert_difference('SoftwareVersion.count') do
      post software_versions_url, params: { software_version: { Software_Name: @software_version.Software_Name, Version_Number: @software_version.Version_Number } }
    end

    assert_redirected_to software_version_url(SoftwareVersion.last)
  end

  test "should show software_version" do
    get software_version_url(@software_version)
    assert_response :success
  end

  test "should get edit" do
    get edit_software_version_url(@software_version)
    assert_response :success
  end

  test "should update software_version" do
    patch software_version_url(@software_version), params: { software_version: { Software_Name: @software_version.Software_Name, Version_Number: @software_version.Version_Number } }
    assert_redirected_to software_version_url(@software_version)
  end

  test "should destroy software_version" do
    assert_difference('SoftwareVersion.count', -1) do
      delete software_version_url(@software_version)
    end

    assert_redirected_to software_versions_url
  end
end
