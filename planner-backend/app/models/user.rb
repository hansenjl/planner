class User < ApplicationRecord
    has_many :trips

    validates :email, presence: true, uniqueness: true
end
