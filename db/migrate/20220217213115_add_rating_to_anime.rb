class AddRatingToAnime < ActiveRecord::Migration[7.0]
  def change
    add_column :animes, :rating, :float, default: 5.0
  end
end
