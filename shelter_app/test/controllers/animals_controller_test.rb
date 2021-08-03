require "test_helper"

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal = animals(:one)
  end

  test "should get index" do
    get animals_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_url
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post animals_url, params: { animal: { adopter_id: @animal.adopter_id, age: @animal.age, chip: @animal.chip, color: @animal.color, condition: @animal.condition, entry_at: @animal.entry_at, hosted_in: @animal.hosted_in, name: @animal.name, observations: @animal.observations, personality: @animal.personality, rescued_from_id: @animal.rescued_from_id, sex: @animal.sex, shelter_id: @animal.shelter_id } }
    end

    assert_redirected_to animal_url(Animal.last)
  end

  test "should show animal" do
    get animal_url(@animal)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_url(@animal)
    assert_response :success
  end

  test "should update animal" do
    patch animal_url(@animal), params: { animal: { adopter_id: @animal.adopter_id, age: @animal.age, chip: @animal.chip, color: @animal.color, condition: @animal.condition, entry_at: @animal.entry_at, hosted_in: @animal.hosted_in, name: @animal.name, observations: @animal.observations, personality: @animal.personality, rescued_from_id: @animal.rescued_from_id, sex: @animal.sex, shelter_id: @animal.shelter_id } }
    assert_redirected_to animal_url(@animal)
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete animal_url(@animal)
    end

    assert_redirected_to animals_url
  end
end
