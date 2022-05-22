class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
    has_many :attendees
    has_many :attendents, through: :attendees

    validates :title, presence: true
    validates :description, presence: true
    validates :location, presence: true
    validates :date, presence: true
end
