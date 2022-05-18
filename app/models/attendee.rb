class Attendee < ApplicationRecord
    belongs_to :attendee, :class_name 'User'
    belongs_to :attended_event, :class 'Event'
end
