
# table domains
#   name                    string
#   created_at              datetime
#   updated_at              datetime

class Domain < ApplicationRecord

  belongs_to :course
end
