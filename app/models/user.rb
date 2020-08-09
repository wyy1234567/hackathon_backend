class User < ApplicationRecord
    has_many :events

    has_many :connects
    has_many :relatives, through: :connects

    has_many :inverse_connects, class_name: "Connect", foreign_key: :relative_id
    has_many :inverse_relatives, through: :inverse_connects, source: :user

    validates :email, uniqueness: true
    validates :username, uniqueness: true

    has_secure_password
end
