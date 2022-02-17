class Anime < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_title, against: :title, using: { tsearch: { prefix: true, dictionary: "english" } }

  validates :title, uniqueness: true
  belongs_to :user
end
