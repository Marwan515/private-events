class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
    has_many :attendees, foreign_key: :attended_event_id, dependent: :destroy
    has_many :attends, through: :attendents
end
