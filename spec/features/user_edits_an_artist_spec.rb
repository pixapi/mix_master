require 'rails_helper'

RSpec.feature "User edits an existing artist" do
  scenario "they see updated data for an artist" do
    artist = Artist.create(name: "Malu", image_path: "http://www.heraldo.es/ocio/sites/default/files/tourist_resources/event/images/lapegatina_0.jpg")
    updated_name = "La Pegatina"

    visit artist_path(artist)
    click_on "Edit"
    fill_in "artist_name", with: updated_name
    click_on "Update Artist"

    expect(page).to have_content updated_name
    expect(page).to_not have_content artist.name
    expect(page).to have_css("img[src=\"#{artist.image_path}\"]")
  end
end
