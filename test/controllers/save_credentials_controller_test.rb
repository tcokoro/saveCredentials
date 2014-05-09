require 'test_helper'

class SaveCredentialsControllerTest < ActionController::TestCase
  setup do
    @save_credential = save_credentials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:save_credentials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create save_credential" do
    assert_difference('SaveCredential.count') do
      post :create, save_credential: {  }
    end

    assert_redirected_to save_credential_path(assigns(:save_credential))
  end

  test "should show save_credential" do
    get :show, id: @save_credential
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @save_credential
    assert_response :success
  end

  test "should update save_credential" do
    patch :update, id: @save_credential, save_credential: {  }
    assert_redirected_to save_credential_path(assigns(:save_credential))
  end

  test "should destroy save_credential" do
    assert_difference('SaveCredential.count', -1) do
      delete :destroy, id: @save_credential
    end

    assert_redirected_to save_credentials_path
  end
end
