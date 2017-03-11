
# table certificates
#   course_id               integer
#   user_id                 integer
#   created_at              datetime
#   updated_at              datetime

class Certificate < ApplicationRecord

  belongs_to :course
  belongs_to :user
end
