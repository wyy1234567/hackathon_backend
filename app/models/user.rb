class User < ApplicationRecord
    has_many :events
    has_many :connects


    has_many :related_relationship, foreign_key: :curr_user, class_name: 'Connect'
    has_many :self_users, through: :related_relationship, source: :self_user

    has_many :relative_relationship, foreign_key: :relate_with_user, class_name: 'Connect'
    has_many :relateds, through: :relative_relationship, source: :related

    validates :email, uniqueness: true

    has_secure_password
end
