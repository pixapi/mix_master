require 'rails_helper'

RSpec.feature "User views all playlists" do
  scenario "they see names of each playlist" do
    playlist1 = Playlist.create(name: "Flamenco")
    playlist2 = Playlist.create(name: "Chillout")
    playlist3 = Playlist.create(name: "Rock")

    visit playlists_path

    expect(page).to have_link playlist1.name, href: playlist_path(playlist1)
    expect(page).to have_link playlist2.name, href: playlist_path(playlist2)
    expect(page).to have_link playlist3.name, href: playlist_path(playlist3)
  end
end
