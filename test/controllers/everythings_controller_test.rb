require 'test_helper'

class EverythingsControllerTest < ActionController::TestCase
  setup do
    @everything = everythings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:everythings)
  end

  test "should be redirected when not logged in" do
    get :new
    assert_response :redirect
    assert_redirected_to new_guest_session_path
  end

  test "should render the new page when logged in" do
    sign_in guests(:kyle)
    get :new
    assert_response :success
  end

  test "should be logged in to post an rsvp" do
    sign_in guests(:kyle)
    post :create, everythings: { friday: "false", friday_lodging: "Hideout", ceremony: "false", reception: "false", saturday_lodging: "Hello", your_friends: "Names"}
    assert_response :redirect
    assert_redirected_to new_guest_session_path
  end

  test "should create everything" do
    assert_difference('Everything.count') do
      post :create, everything: { ceremony: @everything.ceremony, friday: @everything.friday, friday_lodging: @everything.friday_lodging, reception: @everything.reception, saturday_lodging: @everything.saturday_lodging}
    end

    assert_redirected_to everything_path(assigns(:everything))
  end

  test "should show everything" do
    get :show, id: @everything
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @everything
    assert_response :success
  end

  test "should update everything" do
    patch :update, id: @everything, everything: { ceremony: @everything.ceremony, friday: @everything.friday, friday_lodging: @everything.friday_lodging, reception: @everything.reception, saturday_lodging: @everything.saturday_lodging }
    assert_redirected_to everything_path(assigns(:everything))
  end

  test "should destroy everything" do
    assert_difference('Everything.count', -1) do
      delete :destroy, id: @everything
    end

    assert_redirected_to everythings_path
  end
end
