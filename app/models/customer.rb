class Customer < ApplicationRecord
    has_many :updates, dependent: :destroy
    validates :English_name, presence: true
    validates :Chinese_name, presence: true
end
