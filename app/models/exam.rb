# table exams
#   lesson_id               integer
#   is_final_exam           boolean
#   created_at              datetime
#   updated_at              datetime

class Exam < ApplicationRecord

  belongs_to :lessons
  has_many :questions
end
