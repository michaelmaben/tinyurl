class Visit < ApplicationRecord
    belongs_to :link
    scope :recent_visits,  lambda{ order('visit_date DESC limit 5') }
end
