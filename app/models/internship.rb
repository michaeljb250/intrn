class Internship < ApplicationRecord
    geocoded_by :location
    after_validation :geocode, if: :will_save_change_to_location?
    validates :company, presence: true
    validates :address, presence: true
    validates :paid, presence: true
    validates :dates, presence: true
    validates :industry, presence: true
    validates :description, presence: true
    validates :description, presence: true
end
