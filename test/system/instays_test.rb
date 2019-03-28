require "application_system_test_case"

class InstaysTest < ApplicationSystemTestCase
  setup do
    @instay = instays(:one)
  end

  test "visiting the index" do
    visit instays_url
    assert_selector "h1", text: "Instays"
  end

  test "creating a Instay" do
    visit instays_url
    click_on "New Instay"

    fill_in "Description", with: @instay.description
    fill_in "Title", with: @instay.title
    click_on "Create Instay"

    assert_text "Instay was successfully created"
    click_on "Back"
  end

  test "updating a Instay" do
    visit instays_url
    click_on "Edit", match: :first

    fill_in "Description", with: @instay.description
    fill_in "Title", with: @instay.title
    click_on "Update Instay"

    assert_text "Instay was successfully updated"
    click_on "Back"
  end

  test "destroying a Instay" do
    visit instays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Instay was successfully destroyed"
  end
end
