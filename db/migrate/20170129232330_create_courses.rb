class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :course_number
      t.string :course
      t.string :course_name
      t.string :time

      t.timestamps
    end
  end
end
