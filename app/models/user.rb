class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :creator, class_name: 'Event', foreign_key: 'creator_id'
  has_many :attendees
  has_many :attended_events, through: :attendees
end
