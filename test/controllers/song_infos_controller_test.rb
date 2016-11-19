require 'test_helper'

class SongInfosControllerTest < ActionController::TestCase
  setup do
    @song_info = song_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:song_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song_info" do
    assert_difference('SongInfo.count') do
      post :create, song_info: { artist: @song_info.artist, title: @song_info.title }
    end

    assert_redirected_to song_info_path(assigns(:song_info))
  end

  test "should show song_info" do
    get :show, id: @song_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song_info
    assert_response :success
  end

  test "should update song_info" do
    patch :update, id: @song_info, song_info: { artist: @song_info.artist, title: @song_info.title }
    assert_redirected_to song_info_path(assigns(:song_info))
  end

  test "should destroy song_info" do
    assert_difference('SongInfo.count', -1) do
      delete :destroy, id: @song_info
    end

    assert_redirected_to song_infos_path
  end
end
