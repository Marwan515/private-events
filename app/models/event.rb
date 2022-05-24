class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User'
    has_many :attendees
    has_many :attendeds, through: :attendees

    validates :title, presence: true
    validates :description, presence: true
    validates :location, presence: true
    validates :date, presence: true
end
