class Customer < ApplicationRecord
    has_many :updates, dependent: :destroy
    has_many :instruments
    has_and_belongs_to_many :customer_groups
    has_and_belongs_to_many :contact_people  
    validates :English_name, presence: true
    validates :Chinese_name, presence: true
end
