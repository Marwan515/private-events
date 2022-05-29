class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User'
    has_many :attendees
    has_many :attendeds, through: :attendees

    validates :title, :description, :location, :date_time, presence: true
end
