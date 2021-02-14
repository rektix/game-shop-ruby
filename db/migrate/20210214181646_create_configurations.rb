class CreateConfigurations < ActiveRecord::Migration[6.1]
  def change
    create_table :configurations do |t|
      t.integer :user_id
      t.integer :cpu_id
      t.integer :gpu_id
      t.integer :ram

      t.timestamps
    end
  end
end
