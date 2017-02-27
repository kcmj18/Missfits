class AddAcceptedToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :accepted, :boolean, :default => false
  end
end
