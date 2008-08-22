require 'test_helper'

class ImmuniasationsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:immuniasations)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_immuniasation
    assert_difference('Immuniasation.count') do
      post :create, :immuniasation => { }
    end

    assert_redirected_to immuniasation_path(assigns(:immuniasation))
  end

  def test_should_show_immuniasation
    get :show, :id => immuniasations(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => immuniasations(:one).id
    assert_response :success
  end

  def test_should_update_immuniasation
    put :update, :id => immuniasations(:one).id, :immuniasation => { }
    assert_redirected_to immuniasation_path(assigns(:immuniasation))
  end

  def test_should_destroy_immuniasation
    assert_difference('Immuniasation.count', -1) do
      delete :destroy, :id => immuniasations(:one).id
    end

    assert_redirected_to immuniasations_path
  end
end
