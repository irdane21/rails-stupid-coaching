require 'test_helper'

class QuestionControllerTest < ActionDispatch::IntegrationTest
  test "should get ask" do
    get question_ask_url
    assert_response :success
  end

  test "should get answer" do
    get question_answer_url
    assert_response :success
  end

end
