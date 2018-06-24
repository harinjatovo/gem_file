require "application_system_test_case"

class GemesTest < ApplicationSystemTestCase
  setup do
    @geme = gemes(:one)
  end

  test "visiting the index" do
    visit gemes_url
    assert_selector "h1", text: "Gemes"
  end

  test "creating a Geme" do
    visit gemes_url
    click_on "New Geme"

    fill_in "Description", with: @geme.description
    fill_in "Nom", with: @geme.nom
    fill_in "Url", with: @geme.url
    click_on "Create Geme"

    assert_text "Geme was successfully created"
    click_on "Back"
  end

  test "updating a Geme" do
    visit gemes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @geme.description
    fill_in "Nom", with: @geme.nom
    fill_in "Url", with: @geme.url
    click_on "Update Geme"

    assert_text "Geme was successfully updated"
    click_on "Back"
  end

  test "destroying a Geme" do
    visit gemes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Geme was successfully destroyed"
  end
end
