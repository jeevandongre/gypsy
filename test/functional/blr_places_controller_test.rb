require 'test_helper'

class BlrPlacesControllerTest < ActionController::TestCase
  setup do
    @blr_place = blr_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blr_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blr_place" do
    assert_difference('BlrPlace.count') do
      post :create, blr_place: { place_name: @blr_place.place_name, tags: @blr_place.tags }
    end

    assert_redirected_to blr_place_path(assigns(:blr_place))
  end

  test "should show blr_place" do
    get :show, id: @blr_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blr_place
    assert_response :success
  end

  test "should update blr_place" do
    put :update, id: @blr_place, blr_place: { place_name: @blr_place.place_name, tags: @blr_place.tags }
    assert_redirected_to blr_place_path(assigns(:blr_place))
  end

  test "should destroy blr_place" do
    assert_difference('BlrPlace.count', -1) do
      delete :destroy, id: @blr_place
    end

    assert_redirected_to blr_places_path
  end
end
