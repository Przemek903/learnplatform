class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :exam_id
      t.text :question_content
      t.text :answer_a
      t.text :answer_b
      t.text :answer_c
      t.text :answer_d
      t.string :correct_answer
      t.text :correct_answer_description

      t.timestamps
    end
  end
end
