require 'rails_helper'

RSpec.feature "User edits an existing song" do
  scenario "they see updated data for a song" do
    artist = Artist.create(name: "Malu", image_path: "http://www.heraldo.es/ocio/sites/default/files/tourist_resources/event/images/lapegatina_0.jpg")
    song = artist.songs.create(title: "Swan Lake")
    updated_title = "I wanna love you"

    visit song_path(song)
    click_on "Edit"
    fill_in "song_title", with: updated_title
    click_on "Update Song"

    expect(page).to have_content updated_title
    expect(page).to_not have_content song.title
    expect(page).to have_link artist.name, href: artist_path(artist)
  end
end
