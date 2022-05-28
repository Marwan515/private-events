class Attendee < ApplicationRecord
    belongs_to :attendeds, class_name: 'User'
    belongs_to :attended_event, class_name: 'Event'
end
