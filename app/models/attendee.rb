class Attendee < ApplicationRecord
    belongs_to :attended, class_name: 'User'
    belongs_to :attended_event, class_name: 'Event'
end
