class Connect < ApplicationRecord
    belongs_to :self_user, foreign_key: 'curr_user', class_name: 'User'
    belongs_to :related, foreign_key: 'relate_with_user', class_name: 'User'
end
