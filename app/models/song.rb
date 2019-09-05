class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: {
    scope: [:release_year, :artist_name],
    message: "Cannot be repeated by an Artist in the same year."
  }
  validates :released, inclusion: [true, false]

  with_options if: :released? do |song|
    song.validates :release_year, presence: true
    song.validates :release_year, numericality: {
      less_than_or_equal_to: Date.today.year}
    end

  def released?
    released
  end
end
