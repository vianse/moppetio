require 'test_helper'

class CompartirsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compartir = compartirs(:one)
  end

  test "should get index" do
    get compartirs_url
    assert_response :success
  end

  test "should get new" do
    get new_compartir_url
    assert_response :success
  end

  test "should create compartir" do
    assert_difference('Compartir.count') do
      post compartirs_url, params: { compartir: { address: @compartir.address, email: @compartir.email, name: @compartir.name, phone: @compartir.phone, rfc: @compartir.rfc, token: @compartir.token, uid: @compartir.uid } }
    end

    assert_redirected_to compartir_url(Compartir.last)
  end

  test "should show compartir" do
    get compartir_url(@compartir)
    assert_response :success
  end

  test "should get edit" do
    get edit_compartir_url(@compartir)
    assert_response :success
  end

  test "should update compartir" do
    patch compartir_url(@compartir), params: { compartir: { address: @compartir.address, email: @compartir.email, name: @compartir.name, phone: @compartir.phone, rfc: @compartir.rfc, token: @compartir.token, uid: @compartir.uid } }
    assert_redirected_to compartir_url(@compartir)
  end

  test "should destroy compartir" do
    assert_difference('Compartir.count', -1) do
      delete compartir_url(@compartir)
    end

    assert_redirected_to compartirs_url
  end
end
