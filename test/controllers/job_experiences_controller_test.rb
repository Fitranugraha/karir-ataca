require 'test_helper'

class JobExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_experience = job_experiences(:one)
  end

  test "should get index" do
    get job_experiences_url
    assert_response :success
  end

  test "should get new" do
    get new_job_experience_url
    assert_response :success
  end

  test "should create job_experience" do
    assert_difference('JobExperience.count') do
      post job_experiences_url, params: { job_experience: { company_address: @job_experience.company_address, company_name: @job_experience.company_name, company_phone: @job_experience.company_phone, end_date: @job_experience.end_date, job_description: @job_experience.job_description, job_title: @job_experience.job_title, profile_id: @job_experience.profile_id, reason_of_resignation: @job_experience.reason_of_resignation, start_date: @job_experience.start_date } }
    end

    assert_redirected_to job_experience_url(JobExperience.last)
  end

  test "should show job_experience" do
    get job_experience_url(@job_experience)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_experience_url(@job_experience)
    assert_response :success
  end

  test "should update job_experience" do
    patch job_experience_url(@job_experience), params: { job_experience: { company_address: @job_experience.company_address, company_name: @job_experience.company_name, company_phone: @job_experience.company_phone, end_date: @job_experience.end_date, job_description: @job_experience.job_description, job_title: @job_experience.job_title, profile_id: @job_experience.profile_id, reason_of_resignation: @job_experience.reason_of_resignation, start_date: @job_experience.start_date } }
    assert_redirected_to job_experience_url(@job_experience)
  end

  test "should destroy job_experience" do
    assert_difference('JobExperience.count', -1) do
      delete job_experience_url(@job_experience)
    end

    assert_redirected_to job_experiences_url
  end
end
