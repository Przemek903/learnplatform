
# table courses
#   name                    string
#   description             text
#   estimated_time          string
#   domain_id               integer
#   level                   string
#   image                   string
#   created_at              datetime
#   updated_at              datetime

class Course < ApplicationRecord

  has_and_belongs_to_many :users
  belongs_to :domain
  has_many :certificates
  has_many :lessons

  validates :name, presence: true , uniqueness: true
  validates :description, presence: true

end
