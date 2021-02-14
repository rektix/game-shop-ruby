require "application_system_test_case"

class GpusTest < ApplicationSystemTestCase
  setup do
    @gpu = gpus(:one)
  end

  test "visiting the index" do
    visit gpus_url
    assert_selector "h1", text: "Gpus"
  end

  test "creating a Gpu" do
    visit gpus_url
    click_on "New Gpu"

    fill_in "Name", with: @gpu.name
    fill_in "Ram", with: @gpu.ram
    click_on "Create Gpu"

    assert_text "Gpu was successfully created"
    click_on "Back"
  end

  test "updating a Gpu" do
    visit gpus_url
    click_on "Edit", match: :first

    fill_in "Name", with: @gpu.name
    fill_in "Ram", with: @gpu.ram
    click_on "Update Gpu"

    assert_text "Gpu was successfully updated"
    click_on "Back"
  end

  test "destroying a Gpu" do
    visit gpus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gpu was successfully destroyed"
  end
end
