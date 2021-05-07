class User < ApplicationRecord
    has_many :events, inverse_of: :creator
    has_many :user_events
    has_many :events, :through => :user_events, source: :event

    validates :username, uniqueness: true
end
