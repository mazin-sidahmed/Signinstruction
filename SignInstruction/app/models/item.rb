class Item < ApplicationRecord
  # model association
 belongs_to :signlanginstructions

 # validation
 validates_presence_of :name
end
