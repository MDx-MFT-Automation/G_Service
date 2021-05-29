require 'test_helper'

class MaterialListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_list = material_lists(:one)
  end

  test "should get index" do
    get material_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_material_list_url
    assert_response :success
  end

  test "should create material_list" do
    assert_difference('MaterialList.count') do
      post material_lists_url, params: { material_list: { description: @material_list.description, instrument_id: @material_list.instrument_id, name: @material_list.name } }
    end

    assert_redirected_to material_list_url(MaterialList.last)
  end

  test "should show material_list" do
    get material_list_url(@material_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_material_list_url(@material_list)
    assert_response :success
  end

  test "should update material_list" do
    patch material_list_url(@material_list), params: { material_list: { description: @material_list.description, instrument_id: @material_list.instrument_id, name: @material_list.name } }
    assert_redirected_to material_list_url(@material_list)
  end

  test "should destroy material_list" do
    assert_difference('MaterialList.count', -1) do
      delete material_list_url(@material_list)
    end

    assert_redirected_to material_lists_url
  end
end
