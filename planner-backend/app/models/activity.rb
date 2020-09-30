class Activity < ApplicationRecord
  belongs_to :trip
  belongs_to :timeslot, optional: true
end
