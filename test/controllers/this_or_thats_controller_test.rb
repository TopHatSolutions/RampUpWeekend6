require 'test_helper'

class ThisOrThatsControllerTest < ActionController::TestCase
  setup do
    @this_or_that = this_or_thats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:this_or_thats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create this_or_that" do
    assert_difference('ThisOrThat.count') do
      post :create, this_or_that: { comment: @this_or_that.comment, description: @this_or_that.description, hat_brand: @this_or_that.hat_brand, image1: @this_or_that.image1, image2: @this_or_that.image2, is_private: @this_or_that.is_private, jacket_brand: @this_or_that.jacket_brand, pants_brand: @this_or_that.pants_brand, shirt_brand: @this_or_that.shirt_brand, shoes_brand: @this_or_that.shoes_brand, user_id: @this_or_that.user_id }
    end

    assert_redirected_to this_or_that_path(assigns(:this_or_that))
  end

  test "should show this_or_that" do
    get :show, id: @this_or_that
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @this_or_that
    assert_response :success
  end

  test "should update this_or_that" do
    patch :update, id: @this_or_that, this_or_that: { comment: @this_or_that.comment, description: @this_or_that.description, hat_brand: @this_or_that.hat_brand, image1: @this_or_that.image1, image2: @this_or_that.image2, is_private: @this_or_that.is_private, jacket_brand: @this_or_that.jacket_brand, pants_brand: @this_or_that.pants_brand, shirt_brand: @this_or_that.shirt_brand, shoes_brand: @this_or_that.shoes_brand, user_id: @this_or_that.user_id }
    assert_redirected_to this_or_that_path(assigns(:this_or_that))
  end

  test "should destroy this_or_that" do
    assert_difference('ThisOrThat.count', -1) do
      delete :destroy, id: @this_or_that
    end

    assert_redirected_to this_or_thats_path
  end
end
