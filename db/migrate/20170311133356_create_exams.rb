class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.string :lesson_id
      t.boolean :is_final_exam

      t.timestamps
    end
  end
end
