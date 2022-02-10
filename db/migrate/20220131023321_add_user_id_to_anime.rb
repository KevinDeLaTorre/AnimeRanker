class AddUserIdToAnime < ActiveRecord::Migration[7.0]
  def change
    add_column :animes, :user_id, :integer
  end
end
