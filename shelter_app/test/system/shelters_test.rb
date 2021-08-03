require "application_system_test_case"

class SheltersTest < ApplicationSystemTestCase
  setup do
    @shelter = shelters(:one)
  end

  test "visiting the index" do
    visit shelters_url
    assert_selector "h1", text: "Shelters"
  end

  test "creating a Shelter" do
    visit shelters_url
    click_on "New Shelter"

    fill_in "Name", with: @shelter.name
    click_on "Create Shelter"

    assert_text "Shelter was successfully created"
    click_on "Back"
  end

  test "updating a Shelter" do
    visit shelters_url
    click_on "Edit", match: :first

    fill_in "Name", with: @shelter.name
    click_on "Update Shelter"

    assert_text "Shelter was successfully updated"
    click_on "Back"
  end

  test "destroying a Shelter" do
    visit shelters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shelter was successfully destroyed"
  end
end
