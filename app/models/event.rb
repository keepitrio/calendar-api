class Event < ApplicationRecord
    validates_presence_of :description
    validates_presence_of :start
    validates_presence_of :end
    validates_presence_of :day_id
end
