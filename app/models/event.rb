class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User'
    has_many :attendees, foreign_key: 'attended_event_id'
    has_many :attendeds, through: :attendees

    validates :title, :description, :location, :date_time, presence: true

    scope :upcoming, -> { where('date_time >= ?', Date.today) }
    scope :past, -> { where('date_time  < ?', Date.today) }
end
