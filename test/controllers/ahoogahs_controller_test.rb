require 'test_helper'

class AhoogahsControllerTest < ActionController::TestCase
  setup do
    @ahoogah = ahoogahs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ahoogahs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ahoogah" do
    assert_difference('Ahoogah.count') do
      post :create, ahoogah: { Comment: @ahoogah.Comment, License: @ahoogah.License, State: @ahoogah.State, Tag1: @ahoogah.Tag1, Tag2: @ahoogah.Tag2, Tag3: @ahoogah.Tag3 }
    end

    assert_redirected_to ahoogah_path(assigns(:ahoogah))
  end

  test "should show ahoogah" do
    get :show, id: @ahoogah
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ahoogah
    assert_response :success
  end

  test "should update ahoogah" do
    patch :update, id: @ahoogah, ahoogah: { Comment: @ahoogah.Comment, License: @ahoogah.License, State: @ahoogah.State, Tag1: @ahoogah.Tag1, Tag2: @ahoogah.Tag2, Tag3: @ahoogah.Tag3 }
    assert_redirected_to ahoogah_path(assigns(:ahoogah))
  end

  test "should destroy ahoogah" do
    assert_difference('Ahoogah.count', -1) do
      delete :destroy, id: @ahoogah
    end

    assert_redirected_to ahoogahs_path
  end
end
