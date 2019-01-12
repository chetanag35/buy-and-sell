require "application_system_test_case"

class ItemListsTest < ApplicationSystemTestCase
  setup do
    @item_list = item_lists(:one)
  end

  test "visiting the index" do
    visit item_lists_url
    assert_selector "h1", text: "Item Lists"
  end

  test "creating a Item list" do
    visit item_lists_url
    click_on "New Item List"

    fill_in "Contact", with: @item_list.contact
    fill_in "Description", with: @item_list.description
    fill_in "Expected cost", with: @item_list.expected_cost
    fill_in "Image", with: @item_list.image
    fill_in "Title", with: @item_list.title
    click_on "Create Item list"

    assert_text "Item list was successfully created"
    click_on "Back"
  end

  test "updating a Item list" do
    visit item_lists_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @item_list.contact
    fill_in "Description", with: @item_list.description
    fill_in "Expected cost", with: @item_list.expected_cost
    fill_in "Image", with: @item_list.image
    fill_in "Title", with: @item_list.title
    click_on "Update Item list"

    assert_text "Item list was successfully updated"
    click_on "Back"
  end

  test "destroying a Item list" do
    visit item_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item list was successfully destroyed"
  end
end
