class SoftwareVersion < ApplicationRecord
    has_and_belongs_to_many :instruments
    
    def display_name
        "#{self.Software_Name}: #{self.Version_Number}"
    end
end
