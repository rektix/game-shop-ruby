class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :studio_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
