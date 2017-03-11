class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.integer :course_id
      t.string :name
      t.text :description
      t.text :presentation
      t.string :author

      t.timestamps
    end
  end
end
