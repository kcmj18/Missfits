class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :author
      t.text :comment
      t.references :courses, foreign_key: true

      t.timestamps
    end
  end
end
