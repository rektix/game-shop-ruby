class CreateCpus < ActiveRecord::Migration[6.1]
  def change
    create_table :cpus do |t|
      t.string :name
      t.integer :cores

      t.timestamps
    end
  end
end
