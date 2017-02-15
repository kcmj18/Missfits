class AddSecondToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :second, :integer
  end
end
