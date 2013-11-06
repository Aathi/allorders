require 'test_helper'

class AllordersControllerTest < ActionController::TestCase
  setup do
    @allorder = allorders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allorders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allorder" do
    assert_difference('Allorder.count') do
      post :create, allorder: { C4U_commission: @allorder.C4U_commission, CATEGORY: @allorder.CATEGORY, CREATED_DATE: @allorder.CREATED_DATE, DELIVERY_TIME: @allorder.DELIVERY_TIME, DURATION: @allorder.DURATION, Gross_Total: @allorder.Gross_Total, ORDER_STATE: @allorder.ORDER_STATE, PERFORMER: @allorder.PERFORMER, Performer_TOTAL: @allorder.Performer_TOTAL, QUALITY: @allorder.QUALITY, UPLOAD_VIDEO: @allorder.UPLOAD_VIDEO }
    end

    assert_redirected_to allorder_path(assigns(:allorder))
  end

  test "should show allorder" do
    get :show, id: @allorder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allorder
    assert_response :success
  end

  test "should update allorder" do
    patch :update, id: @allorder, allorder: { C4U_commission: @allorder.C4U_commission, CATEGORY: @allorder.CATEGORY, CREATED_DATE: @allorder.CREATED_DATE, DELIVERY_TIME: @allorder.DELIVERY_TIME, DURATION: @allorder.DURATION, Gross_Total: @allorder.Gross_Total, ORDER_STATE: @allorder.ORDER_STATE, PERFORMER: @allorder.PERFORMER, Performer_TOTAL: @allorder.Performer_TOTAL, QUALITY: @allorder.QUALITY, UPLOAD_VIDEO: @allorder.UPLOAD_VIDEO }
    assert_redirected_to allorder_path(assigns(:allorder))
  end

  test "should destroy allorder" do
    assert_difference('Allorder.count', -1) do
      delete :destroy, id: @allorder
    end

    assert_redirected_to allorders_path
  end
end
