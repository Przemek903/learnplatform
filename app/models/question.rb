
# table questions
#   exam_id                     integer
#   question_content            text
#   answer_a                    text
#   answer_b                    text
#   answer_c                    text
#   answer_d                    text
#   correct_answer              string
#   correct_answer_description  text
#   created_at                  datetime
#   updated_at                  datetime

class Question < ApplicationRecord

  belongs_to :exam
end
