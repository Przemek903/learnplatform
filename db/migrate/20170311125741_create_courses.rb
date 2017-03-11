class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :estimated_time
      t.integer :domain_id
      t.string :level
      t.string :image

      t.timestamps
    end
  end
end
