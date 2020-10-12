require 'test_helper'

class TyresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tyre = tyres(:one)
  end

  test "should get index" do
    get tyres_url, as: :json
    assert_response :success
  end

  test "should create tyre" do
    assert_difference('Tyre.count') do
      post tyres_url, params: { tyre: { brand: @tyre.brand, code: @tyre.code, price: @tyre.price, quantity: @tyre.quantity, year: @tyre.year } }, as: :json
    end

    assert_response 201
  end

  test "should show tyre" do
    get tyre_url(@tyre), as: :json
    assert_response :success
  end

  test "should update tyre" do
    patch tyre_url(@tyre), params: { tyre: { brand: @tyre.brand, code: @tyre.code, price: @tyre.price, quantity: @tyre.quantity, year: @tyre.year } }, as: :json
    assert_response 200
  end

  test "should destroy tyre" do
    assert_difference('Tyre.count', -1) do
      delete tyre_url(@tyre), as: :json
    end

    assert_response 204
  end
end
