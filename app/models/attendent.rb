class Attendee < ApplicationRecord
    belongs_to :attendent, :class_name 'User'
    belongs_to :attended_event, :class 'Event'
end
