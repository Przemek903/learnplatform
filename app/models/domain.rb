
# table domains
#   name                    string
#   created_at              datetime
#   updated_at              datetime

class Domain < ApplicationRecord

  has_many :courses
end
