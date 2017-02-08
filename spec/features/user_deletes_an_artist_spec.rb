require 'rails_helper'

RSpec.feature "User deletes an existing artist" do
  scenario "they are redirected to the list of artists but do not see the artist name" do
    artist = Artist.create(name: "Beyonce", image_path: "http://factmag-images.s3.amazonaws.com/wp-content/uploads/2013/12/beyonce-121313.jpg")

    visit artist_path(artist)
    click_on "Delete"

    expect(page).to_not have_content artist.name
  end
end
