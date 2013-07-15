require 'test_helper'

class EventtrackersControllerTest < ActionController::TestCase
  setup do
    @eventtracker = eventtrackers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eventtrackers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eventtracker" do
    assert_difference('Eventtracker.count') do
      post :create, eventtracker: { date: @eventtracker.date, description: @eventtracker.description, title: @eventtracker.title }
    end

    assert_redirected_to eventtracker_path(assigns(:eventtracker))
  end

  test "should show eventtracker" do
    get :show, id: @eventtracker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eventtracker
    assert_response :success
  end

  test "should update eventtracker" do
    put :update, id: @eventtracker, eventtracker: { date: @eventtracker.date, description: @eventtracker.description, title: @eventtracker.title }
    assert_redirected_to eventtracker_path(assigns(:eventtracker))
  end

  test "should destroy eventtracker" do
    assert_difference('Eventtracker.count', -1) do
      delete :destroy, id: @eventtracker
    end

    assert_redirected_to eventtrackers_path
  end
end
