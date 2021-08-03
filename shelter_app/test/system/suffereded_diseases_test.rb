require "application_system_test_case"

class SufferededDiseasesTest < ApplicationSystemTestCase
  setup do
    @suffereded_disease = suffereded_diseases(:one)
  end

  test "visiting the index" do
    visit suffereded_diseases_url
    assert_selector "h1", text: "Suffereded Diseases"
  end

  test "creating a Suffereded disease" do
    visit suffereded_diseases_url
    click_on "New Suffereded Disease"

    check "Discharged" if @suffereded_disease.discharged
    fill_in "Disease", with: @suffereded_disease.disease_id
    fill_in "Medical history", with: @suffereded_disease.medical_history_id
    fill_in "Started at", with: @suffereded_disease.started_at
    fill_in "Veterinary", with: @suffereded_disease.veterinary_id
    click_on "Create Suffereded disease"

    assert_text "Suffereded disease was successfully created"
    click_on "Back"
  end

  test "updating a Suffereded disease" do
    visit suffereded_diseases_url
    click_on "Edit", match: :first

    check "Discharged" if @suffereded_disease.discharged
    fill_in "Disease", with: @suffereded_disease.disease_id
    fill_in "Medical history", with: @suffereded_disease.medical_history_id
    fill_in "Started at", with: @suffereded_disease.started_at
    fill_in "Veterinary", with: @suffereded_disease.veterinary_id
    click_on "Update Suffereded disease"

    assert_text "Suffereded disease was successfully updated"
    click_on "Back"
  end

  test "destroying a Suffereded disease" do
    visit suffereded_diseases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suffereded disease was successfully destroyed"
  end
end
