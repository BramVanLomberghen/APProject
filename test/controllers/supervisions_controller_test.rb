require 'test_helper'

class SupervisionsControllerTest < ActionController::TestCase
  setup do
    @supervision = supervisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supervisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supervision" do
    assert_difference('Supervision.count') do
      post :create, supervision: { attendance_id: @supervision.attendance_id, classroom_id: @supervision.classroom_id, end: @supervision.end, exam_period_id: @supervision.exam_period_id, start: @supervision.start, supervisor_id: @supervision.supervisor_id }
    end

    assert_redirected_to supervision_path(assigns(:supervision))
  end

  test "should show supervision" do
    get :show, id: @supervision
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supervision
    assert_response :success
  end

  test "should update supervision" do
    patch :update, id: @supervision, supervision: { attendance_id: @supervision.attendance_id, classroom_id: @supervision.classroom_id, end: @supervision.end, exam_period_id: @supervision.exam_period_id, start: @supervision.start, supervisor_id: @supervision.supervisor_id }
    assert_redirected_to supervision_path(assigns(:supervision))
  end

  test "should destroy supervision" do
    assert_difference('Supervision.count', -1) do
      delete :destroy, id: @supervision
    end

    assert_redirected_to supervisions_path
  end
end
