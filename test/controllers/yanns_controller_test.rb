require "test_helper"

class YannsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yann = yanns(:one)
  end

  test "should get index" do
    get yanns_url, as: :json
    assert_response :success
  end

  test "should create yann" do
    assert_difference("Yann.count") do
      post yanns_url, params: { yann: { name: @yann.name } }, as: :json
    end

    assert_response :created
  end

  test "should show yann" do
    get yann_url(@yann), as: :json
    assert_response :success
  end

  test "should update yann" do
    patch yann_url(@yann), params: { yann: { name: @yann.name } }, as: :json
    assert_response :success
  end

  test "should destroy yann" do
    assert_difference("Yann.count", -1) do
      delete yann_url(@yann), as: :json
    end

    assert_response :no_content
  end
end
