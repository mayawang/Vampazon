require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: products(:product1).id
    assert_response :success
  end


  test 'Non-authenticated user should NOT be able to create a new product' do
    session[:user_id] = nil

    post :create, {product: {name: "RBG", description: "Yada yada", price: "2.00", inventory: 2, category: "Houseware", user_id: nil}}

    assert_equal "You must be logged in first", flash[:notice]
    assert_response :redirect
  end

  # test "If a user is not logged in they cannot see their task." do
  #   session[:user_id] = nil  # ensure no one is logged in

  #   get :show, id: tasks(:grace_task).id
  #   # if they are not logged in they cannot see the resource and are redirected to login.
  #   assert_redirected session_path
  #   assert_equal "You must be logged in first", flash[:notice]
  # end


  #   get :show, id: tasks(:grace_task).id
  #   # if they are not logged in they cannot see the resource and are redirected to login.
  #   assert_redirected session_path
  #   assert_equal "You must be logged in first", flash[:notice]
  # end
  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end
  #
  # test "should get create" do
  #   get :create
  #   assert_response :success
  # end
  #
  # test "should get edit" do
  #   get :edit
  #   assert_response :success
  # end
  #
  # test "should get update" do
  #   get :update
  #   assert_response :success
  # end
  #
  # test "should get destroy" do
  #   get :destroy
  #   assert_response :success
  # end
  #
  # #example used was in TaskRails Task Controller, needs fleshing out with fixture info
  #
  #   test "If a user is not logged in they cannot see their product." do
  #   session[:user_id] = nil  # ensure no one is logged in
  #
  #   get :show, id: products(:SOMEPRODUCT).id
  #   # if they are not logged in they cannot see the resource and are redirected to login.
  #   assert_redirected session_path
  #   assert_equal "You must be logged in first", flash[:notice]
  # end
  #
  # test "Make sure a user can see their products" do
  #   session[:user_id] = users(:SOMENAME).id
  #   get :show, id: products(:SOMEPRODUCT).id
  #
  #   assert_response :success
  # end
  #
  # test "Make Sure a User Cannot See Another User's products" do
  #   session[:user_id] = users(:SOMENAME).id
  #   get :show, id: products(:SOMEPRODUCT).id
  #   get :show, id: products(:SOMEPRODUCT).id
  #
  #   assert_response :redirect
  #   assert_equal flash[:notice], "You do not have access to that information."
  # end
  #

end
