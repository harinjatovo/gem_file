require 'test_helper'

class GemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geme = gemes(:one)
  end

  test "should get index" do
    get gemes_url
    assert_response :success
  end

  test "should get new" do
    get new_geme_url
    assert_response :success
  end

  test "should create geme" do
    assert_difference('Geme.count') do
      post gemes_url, params: { geme: { description: @geme.description, nom: @geme.nom, url: @geme.url } }
    end

    assert_redirected_to geme_url(Geme.last)
  end

  test "should show geme" do
    get geme_url(@geme)
    assert_response :success
  end

  test "should get edit" do
    get edit_geme_url(@geme)
    assert_response :success
  end

  test "should update geme" do
    patch geme_url(@geme), params: { geme: { description: @geme.description, nom: @geme.nom, url: @geme.url } }
    assert_redirected_to geme_url(@geme)
  end

  test "should destroy geme" do
    assert_difference('Geme.count', -1) do
      delete geme_url(@geme)
    end

    assert_redirected_to gemes_url
  end
end
