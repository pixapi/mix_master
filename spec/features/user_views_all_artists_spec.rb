require 'rails_helper'

RSpec.feature "User views all artists" do
  scenario "they see names of each artist" do
    artist1 = Artist.create(name: "Malu", image_path: "https://pbs.twimg.com/profile_images/788715524981190656/TMDzdouf.jpg")
    artist2 = Artist.create(name: "Beyonce", image_path: "http://factmag-images.s3.amazonaws.com/wp-content/uploads/2013/12/beyonce-121313.jpg")
    artist3 = Artist.create(name: "La Pegatina", image_path: "http://www.heraldo.es/ocio/sites/default/files/tourist_resources/event/images/lapegatina_0.jpg")

    visit artists_path

    expect(page).to have_link artist1.name, href: artist_path(artist1)
    expect(page).to have_link artist2.name, href: artist_path(artist2)
    expect(page).to have_link artist3.name, href: artist_path(artist3)
  end
end
