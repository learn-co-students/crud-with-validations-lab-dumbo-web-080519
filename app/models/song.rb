class Song < ApplicationRecord
  validates :title, :artist_name, presence: true
  validates :title, uniqueness: {scope: [:artist_name, :release_year]}
  validates :released, inclusion: {in: [true, false]}

  validate :release_year_exists_if_released
  validate :release_year_not_in_future

  def release_year_exists_if_released
    if self.released && !self.release_year
      self.errors[:release_year] << "Must have release year"
    end
  end

  def release_year_not_in_future
    if self.release_year && self.release_year > Time.now.year
      self.errors[:release_year] << "Release year can't be in future"
    end
  end

end
