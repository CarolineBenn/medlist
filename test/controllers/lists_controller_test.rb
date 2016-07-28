require 'test_helper'

class ListsControllerTest < ActionController::TestCase
  setup do
    @list = lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list" do
    assert_difference('List.count') do
      post :create, list: { africa: @list.africa, asia: @list.asia, aus_nz: @list.aus_nz, eastern_europe: @list.eastern_europe, list_name: @list.list_name, middle_east: @list.middle_east, section: @list.section, south_america: @list.south_america, total: @list.total, united_kingdom: @list.united_kingdom, usa_can: @list.usa_can, western_europe: @list.western_europe }
    end

    assert_redirected_to list_path(assigns(:list))
  end

  test "should show list" do
    get :show, id: @list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list
    assert_response :success
  end

  test "should update list" do
    patch :update, id: @list, list: { africa: @list.africa, asia: @list.asia, aus_nz: @list.aus_nz, eastern_europe: @list.eastern_europe, list_name: @list.list_name, middle_east: @list.middle_east, section: @list.section, south_america: @list.south_america, total: @list.total, united_kingdom: @list.united_kingdom, usa_can: @list.usa_can, western_europe: @list.western_europe }
    assert_redirected_to list_path(assigns(:list))
  end

  test "should destroy list" do
    assert_difference('List.count', -1) do
      delete :destroy, id: @list
    end

    assert_redirected_to lists_path
  end
end
