require 'test_helper'

class ItemContainersControllerTest < ActionController::TestCase
  setup do
    @item_container = item_containers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_containers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_container" do
    assert_difference('ItemContainer.count') do
      post :create, item_container: { container_id: @item_container.container_id, item_id: @item_container.item_id }
    end

    assert_redirected_to item_container_path(assigns(:item_container))
  end

  test "should show item_container" do
    get :show, id: @item_container
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_container
    assert_response :success
  end

  test "should update item_container" do
    patch :update, id: @item_container, item_container: { container_id: @item_container.container_id, item_id: @item_container.item_id }
    assert_redirected_to item_container_path(assigns(:item_container))
  end

  test "should destroy item_container" do
    assert_difference('ItemContainer.count', -1) do
      delete :destroy, id: @item_container
    end

    assert_redirected_to item_containers_path
  end
end
