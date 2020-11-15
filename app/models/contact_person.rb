class ContactPerson < ApplicationRecord
    has_and_belongs_to_many :customers
    has_many :phones
    has_many :emails
    def display_name
        if self.tag != ""
            "#{self.Chinese_Family_Name}#{self.Chinese_Given_Name}(#{self.tag})"
        else
            "#{self.Chinese_Family_Name}#{self.Chinese_Given_Name}"
        end
    end
end
