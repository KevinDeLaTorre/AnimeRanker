class AddIndexToAnimeTitle < ActiveRecord::Migration[7.0]
  def change
    add_index :animes, :title, unique: true
  end
end
