class Customer < ApplicationRecord
    has_many :updates, dependent: :destroy
    has_and_belongs_to_many :customer_groups
    validates :English_name, presence: true
    validates :Chinese_name, presence: true
end
