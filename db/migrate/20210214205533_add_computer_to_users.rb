class AddComputerToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :computer_id, :integer
  end
end
