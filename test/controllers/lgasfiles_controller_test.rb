require 'test_helper'

class LgasfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lgasfile = lgasfiles(:one)
  end

  test "should get index" do
    get lgasfiles_url
    assert_response :success
  end

  test "should get new" do
    get new_lgasfile_url
    assert_response :success
  end

  test "should create lgasfile" do
    assert_difference('Lgasfile.count') do
      post lgasfiles_url, params: { lgasfile: { code: @lgasfile.code, long_name: @lgasfile.long_name, name: @lgasfile.name } }
    end

    assert_redirected_to lgasfile_url(Lgasfile.last)
  end

  test "should show lgasfile" do
    get lgasfile_url(@lgasfile)
    assert_response :success
  end

  test "should get edit" do
    get edit_lgasfile_url(@lgasfile)
    assert_response :success
  end

  test "should update lgasfile" do
    patch lgasfile_url(@lgasfile), params: { lgasfile: { code: @lgasfile.code, long_name: @lgasfile.long_name, name: @lgasfile.name } }
    assert_redirected_to lgasfile_url(@lgasfile)
  end

  test "should destroy lgasfile" do
    assert_difference('Lgasfile.count', -1) do
      delete lgasfile_url(@lgasfile)
    end

    assert_redirected_to lgasfiles_url
  end
end
