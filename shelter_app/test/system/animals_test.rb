require "application_system_test_case"

class AnimalsTest < ApplicationSystemTestCase
  setup do
    @animal = animals(:one)
  end

  test "visiting the index" do
    visit animals_url
    assert_selector "h1", text: "Animals"
  end

  test "creating a Animal" do
    visit animals_url
    click_on "New Animal"

    fill_in "Adopter", with: @animal.adopter_id
    fill_in "Age", with: @animal.age
    fill_in "Chip", with: @animal.chip
    fill_in "Color", with: @animal.color
    fill_in "Condition", with: @animal.condition
    fill_in "Entry at", with: @animal.entry_at
    fill_in "Hosted in", with: @animal.hosted_in
    fill_in "Name", with: @animal.name
    fill_in "Observations", with: @animal.observations
    fill_in "Personality", with: @animal.personality
    fill_in "Rescued from", with: @animal.rescued_from_id
    fill_in "Sex", with: @animal.sex
    fill_in "Shelter", with: @animal.shelter_id
    click_on "Create Animal"

    assert_text "Animal was successfully created"
    click_on "Back"
  end

  test "updating a Animal" do
    visit animals_url
    click_on "Edit", match: :first

    fill_in "Adopter", with: @animal.adopter_id
    fill_in "Age", with: @animal.age
    fill_in "Chip", with: @animal.chip
    fill_in "Color", with: @animal.color
    fill_in "Condition", with: @animal.condition
    fill_in "Entry at", with: @animal.entry_at
    fill_in "Hosted in", with: @animal.hosted_in
    fill_in "Name", with: @animal.name
    fill_in "Observations", with: @animal.observations
    fill_in "Personality", with: @animal.personality
    fill_in "Rescued from", with: @animal.rescued_from_id
    fill_in "Sex", with: @animal.sex
    fill_in "Shelter", with: @animal.shelter_id
    click_on "Update Animal"

    assert_text "Animal was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal" do
    visit animals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal was successfully destroyed"
  end
end
