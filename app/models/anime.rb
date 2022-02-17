class Anime < ApplicationRecord
  include PgSearch::Model
  before_validation :prep_params
  
  belongs_to :user

  validates :title, uniqueness: true

  pg_search_scope :search_title, against: :title, using: { tsearch: { prefix: true, dictionary: "english" }, trigram: { threshold: 0.3 } }

  private
  
  def prep_params
    self.title = self.title.strip unless self.title.nil?
    self.title = self.title.titleize
  end
end
