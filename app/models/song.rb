class Song < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true

  belongs_to :artist
end
