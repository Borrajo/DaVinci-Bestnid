require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get buy" do
    get :buy
    assert_response :success
  end

  test "should get sell" do
    get :sell
    assert_response :success
  end

  test "should get ask" do
    get :ask
    assert_response :success
  end

  test "should get answer" do
    get :answer
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
