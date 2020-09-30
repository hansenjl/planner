class Trip < ApplicationRecord
  belongs_to :user
  has_many :activities
  has_many :timeslots

  validates :name, presence: true
end
