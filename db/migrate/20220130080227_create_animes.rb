class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :title, unique: true
      t.text :description

      t.timestamps
    end
  end
end
