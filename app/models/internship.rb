class Internship < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
    validates :company, presence: true
    validates :title, presence: true
    validates :address, presence: true
    validates :paid, presence: true
    validates :dates, presence: true
    validates :industry, presence: true
    validates :description, presence: true, length: { minimum: 200, maximum: 300 }
    has_one_attached :photo
end
