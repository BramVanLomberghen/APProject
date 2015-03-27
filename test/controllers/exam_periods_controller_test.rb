require 'test_helper'

class ExamPeriodsControllerTest < ActionController::TestCase
  setup do
    @exam_period = exam_periods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exam_periods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exam_period" do
    assert_difference('ExamPeriod.count') do
      post :create, exam_period: { end: @exam_period.end, name: @exam_period.name, start: @exam_period.start }
    end

    assert_redirected_to exam_period_path(assigns(:exam_period))
  end

  test "should show exam_period" do
    get :show, id: @exam_period
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exam_period
    assert_response :success
  end

  test "should update exam_period" do
    patch :update, id: @exam_period, exam_period: { end: @exam_period.end, name: @exam_period.name, start: @exam_period.start }
    assert_redirected_to exam_period_path(assigns(:exam_period))
  end

  test "should destroy exam_period" do
    assert_difference('ExamPeriod.count', -1) do
      delete :destroy, id: @exam_period
    end

    assert_redirected_to exam_periods_path
  end
end
