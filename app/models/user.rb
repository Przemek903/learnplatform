
# table users
#   email                   string
#   encrypted_password      string
#   name                    string
#   surname                 string
#   city                    string
#   street                  string
#   street_number           string
#   home_number             string
#   birth_date              date
#   education               string
#   reset_password_token    string
#   reset_password_sent_at  datetime
#   remember_created_at     datetime
#   sign_in_count           integer
#   current_sign_in_at      datetime
#   last_sign_in_at         datetime
#   current_sign_in_ip      string
#   last_sign_in_ip         string
#   created_at              datetime
#   updated_at              datetime

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :surname, presence: true

  has_and_belongs_to_many :courses
  has_many :certificates

  def ability
    @ability ||= Ability.new(self)
  end

  def admin?
    false
  end
end
