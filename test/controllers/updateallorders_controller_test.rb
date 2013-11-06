require 'test_helper'

class UpdateallordersControllerTest < ActionController::TestCase
  setup do
    @updateallorder = updateallorders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:updateallorders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create updateallorder" do
    assert_difference('Updateallorder.count') do
      post :create, updateallorder: { C4U_commission: @updateallorder.C4U_commission, CATEGORY: @updateallorder.CATEGORY, CREATED_DATE: @updateallorder.CREATED_DATE, DELIVERY_TIME: @updateallorder.DELIVERY_TIME, DURATION: @updateallorder.DURATION, Gross_Total: @updateallorder.Gross_Total, ORDER_STATE: @updateallorder.ORDER_STATE, PERFORMER: @updateallorder.PERFORMER, Performer_TOTAL: @updateallorder.Performer_TOTAL, QUALITY: @updateallorder.QUALITY, UPLOAD_VIDEO: @updateallorder.UPLOAD_VIDEO }
    end

    assert_redirected_to updateallorder_path(assigns(:updateallorder))
  end

  test "should show updateallorder" do
    get :show, id: @updateallorder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @updateallorder
    assert_response :success
  end

  test "should update updateallorder" do
    patch :update, id: @updateallorder, updateallorder: { C4U_commission: @updateallorder.C4U_commission, CATEGORY: @updateallorder.CATEGORY, CREATED_DATE: @updateallorder.CREATED_DATE, DELIVERY_TIME: @updateallorder.DELIVERY_TIME, DURATION: @updateallorder.DURATION, Gross_Total: @updateallorder.Gross_Total, ORDER_STATE: @updateallorder.ORDER_STATE, PERFORMER: @updateallorder.PERFORMER, Performer_TOTAL: @updateallorder.Performer_TOTAL, QUALITY: @updateallorder.QUALITY, UPLOAD_VIDEO: @updateallorder.UPLOAD_VIDEO }
    assert_redirected_to updateallorder_path(assigns(:updateallorder))
  end

  test "should destroy updateallorder" do
    assert_difference('Updateallorder.count', -1) do
      delete :destroy, id: @updateallorder
    end

    assert_redirected_to updateallorders_path
  end
end
