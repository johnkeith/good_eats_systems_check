class Restaurant < ActiveRecord::Base
  has_many :reviews
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :zipcode, presence: true
  self.per_page = 20
end
