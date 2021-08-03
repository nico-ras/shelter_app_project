require "test_helper"

class SufferededDiseasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suffereded_disease = suffereded_diseases(:one)
  end

  test "should get index" do
    get suffereded_diseases_url
    assert_response :success
  end

  test "should get new" do
    get new_suffereded_disease_url
    assert_response :success
  end

  test "should create suffereded_disease" do
    assert_difference('SufferededDisease.count') do
      post suffereded_diseases_url, params: { suffereded_disease: { discharged: @suffereded_disease.discharged, disease_id: @suffereded_disease.disease_id, medical_history_id: @suffereded_disease.medical_history_id, started_at: @suffereded_disease.started_at, veterinary_id: @suffereded_disease.veterinary_id } }
    end

    assert_redirected_to suffereded_disease_url(SufferededDisease.last)
  end

  test "should show suffereded_disease" do
    get suffereded_disease_url(@suffereded_disease)
    assert_response :success
  end

  test "should get edit" do
    get edit_suffereded_disease_url(@suffereded_disease)
    assert_response :success
  end

  test "should update suffereded_disease" do
    patch suffereded_disease_url(@suffereded_disease), params: { suffereded_disease: { discharged: @suffereded_disease.discharged, disease_id: @suffereded_disease.disease_id, medical_history_id: @suffereded_disease.medical_history_id, started_at: @suffereded_disease.started_at, veterinary_id: @suffereded_disease.veterinary_id } }
    assert_redirected_to suffereded_disease_url(@suffereded_disease)
  end

  test "should destroy suffereded_disease" do
    assert_difference('SufferededDisease.count', -1) do
      delete suffereded_disease_url(@suffereded_disease)
    end

    assert_redirected_to suffereded_diseases_url
  end
end
