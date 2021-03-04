require "application_system_test_case"

class LgasfilesTest < ApplicationSystemTestCase
  setup do
    @lgasfile = lgasfiles(:one)
  end

  test "visiting the index" do
    visit lgasfiles_url
    assert_selector "h1", text: "Lgasfiles"
  end

  test "creating a Lgasfile" do
    visit lgasfiles_url
    click_on "New Lgasfile"

    fill_in "Code", with: @lgasfile.code
    fill_in "Long name", with: @lgasfile.long_name
    fill_in "Name", with: @lgasfile.name
    click_on "Create Lgasfile"

    assert_text "Lgasfile was successfully created"
    click_on "Back"
  end

  test "updating a Lgasfile" do
    visit lgasfiles_url
    click_on "Edit", match: :first

    fill_in "Code", with: @lgasfile.code
    fill_in "Long name", with: @lgasfile.long_name
    fill_in "Name", with: @lgasfile.name
    click_on "Update Lgasfile"

    assert_text "Lgasfile was successfully updated"
    click_on "Back"
  end

  test "destroying a Lgasfile" do
    visit lgasfiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lgasfile was successfully destroyed"
  end
end
