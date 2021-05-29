class StorageLocation < ApplicationRecord
    has_many :materials

    def description
        
        "#{self.storage_location_name}"
        
    end
end
