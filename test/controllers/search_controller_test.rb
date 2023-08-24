require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest

  def setup

    @user = User.create(first_name: "Jasper", last_name: "Mocke")

  end

  test "should return error if q param is not present" do
    get search_path
    assert_response :bad_request
    assert_equal({ error: 'q is required' }.to_json, response.body)
  end

  test "should return one search result" do
    get search_path(q: 'mo')
    assert_response :success

    json_response = JSON.parse(response.body)

    assert_equal(1, json_response.length)

  end

  test "should return a result with the search field correctly populated" do
    get search_path(q: 'mo')
    assert_response :success

    json_response = JSON.parse(response.body)

    assert_equal('Mocke', json_response.first["search_field"])
  end

  test "should return a result with the display field correctly populated" do
    get search_path(q: 'mo')
    assert_response :success

    json_response = JSON.parse(response.body)

    assert_equal('Jasper Mocke', json_response.first["display_field"])

  end
  test "should return a result with the search type correctly populated" do
    get search_path(q: 'mo')

    json_response = JSON.parse(response.body)

    assert_equal('user', json_response.first["search_type"])
  end

  test "should return a result with the path correctly populated" do
    get search_path(q: 'mo')
    assert_response :success

    json_response = JSON.parse(response.body)

    assert_not_empty(json_response.first["path"])
  end

end
