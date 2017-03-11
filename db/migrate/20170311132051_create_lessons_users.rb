class CreateLessonsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :lesson, index: true
      t.boolean :passed, default: false
      t.integer :result
      t.boolean :started, default: false

      t.timestamps
    end
  end
end
