class Feedback < ApplicationRecord
    belongs_to :location
    belongs_to :event
end
