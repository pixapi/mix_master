# require 'rails_helper'
#
# RSpec.feature "User edits an existing song" do
#   scenario "they see updated data for a song" do
#     artist = create(:artist)
#     song = create(:song)
#
#
#     updated_song_title = "I wanna love you"
#     byebug
#     visit song_path(song)
#     click_on "Edit"
#     fill_in "song_title", with: updated_song_title
#     click_on "Update Song"
#
#     expect(page).to have_content updated_song_title
#     expect(page).to have_link artist.name, href: artist_path(artist)
#   end
# end
