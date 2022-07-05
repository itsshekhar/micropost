require "application_system_test_case"

class MicroPostsTest < ApplicationSystemTestCase
  setup do
    @micro_post = micro_posts(:one)
  end

  test "visiting the index" do
    visit micro_posts_url
    assert_selector "h1", text: "Micro posts"
  end

  test "should create micro post" do
    visit micro_posts_url
    click_on "New micro post"

    fill_in "Content", with: @micro_post.content
    fill_in "User", with: @micro_post.user_id
    click_on "Create Micro post"

    assert_text "Micro post was successfully created"
    click_on "Back"
  end

  test "should update Micro post" do
    visit micro_post_url(@micro_post)
    click_on "Edit this micro post", match: :first

    fill_in "Content", with: @micro_post.content
    fill_in "User", with: @micro_post.user_id
    click_on "Update Micro post"

    assert_text "Micro post was successfully updated"
    click_on "Back"
  end

  test "should destroy Micro post" do
    visit micro_post_url(@micro_post)
    click_on "Destroy this micro post", match: :first

    assert_text "Micro post was successfully destroyed"
  end
end
