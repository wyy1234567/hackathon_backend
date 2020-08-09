class Connect < ApplicationRecord
    belongs_to :user
    belongs_to :relative, class_name: 'User'
end
