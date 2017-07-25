class Song < ActiveRecord::Base
	validates :title, :artist_name, presence: true
	validates :title, uniqueness: true
	validates :release_year, presence: true, if: :released
	validates :release_year, numericality: { less_than_or_equal_to: Date.current.year}, if: :released
end


