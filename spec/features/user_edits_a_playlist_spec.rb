require 'rails_helper'

RSpec.feature "User edits an existing playlist" do
  scenario "they see update data for a playlist" do
    playlist = Playlist.create(name: "Classical")
    updated_name = "Spanish pop"
    old_song = Song.create(title: "Swan Lake")
    new_song = Song.create(title: "Amaral")

    visit playlist_path(playlist)
    click_on "Edit"
    fill_in "playlist_name", with: updated_name
    check("song-#{new_song.id}")
    uncheck("song-#{old_song.id}")
    click_on "Update Playlist"

    expect(page).to have_content updated_name
    expect(page).to have_content new_song.title
    expect(page).to_not have_content old_song.title
  end
end
