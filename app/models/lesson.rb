class Lesson < ApplicationRecord

  has_one :exam
  belongs_to :course
end
