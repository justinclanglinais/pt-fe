require 'test_helper'

class BeltsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @belt = belts(:one)
  end

  test "should get index" do
    get belts_url, as: :json
    assert_response :success
  end

  test "should create belt" do
    assert_difference('Belt.count') do
      post belts_url, params: { belt: { rank: @belt.rank, student_id: @belt.student_id } }, as: :json
    end

    assert_response 201
  end

  test "should show belt" do
    get belt_url(@belt), as: :json
    assert_response :success
  end

  test "should update belt" do
    patch belt_url(@belt), params: { belt: { rank: @belt.rank, student_id: @belt.student_id } }, as: :json
    assert_response 200
  end

  test "should destroy belt" do
    assert_difference('Belt.count', -1) do
      delete belt_url(@belt), as: :json
    end

    assert_response 204
  end
end
