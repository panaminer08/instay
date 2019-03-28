require 'test_helper'

class InstaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instay = instays(:one)
  end

  test "should get index" do
    get instays_url
    assert_response :success
  end

  test "should get new" do
    get new_instay_url
    assert_response :success
  end

  test "should create instay" do
    assert_difference('Instay.count') do
      post instays_url, params: { instay: { description: @instay.description, title: @instay.title } }
    end

    assert_redirected_to instay_url(Instay.last)
  end

  test "should show instay" do
    get instay_url(@instay)
    assert_response :success
  end

  test "should get edit" do
    get edit_instay_url(@instay)
    assert_response :success
  end

  test "should update instay" do
    patch instay_url(@instay), params: { instay: { description: @instay.description, title: @instay.title } }
    assert_redirected_to instay_url(@instay)
  end

  test "should destroy instay" do
    assert_difference('Instay.count', -1) do
      delete instay_url(@instay)
    end

    assert_redirected_to instays_url
  end
end
