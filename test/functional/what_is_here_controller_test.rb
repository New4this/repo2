require 'test_helper'

class WhatIsHereControllerTest < ActionController::TestCase
  test "should get Birds" do
    get :Birds
    assert_response :success
  end

  test "should get Butterflies" do
    get :Butterflies
    assert_response :success
  end

  test "should get Fungi" do
    get :Fungi
    assert_response :success
  end

  test "should get Plants" do
    get :Plants
    assert_response :success
  end

end
