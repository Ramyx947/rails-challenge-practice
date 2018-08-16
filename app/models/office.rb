class Office < ApplicationRecord

#1. creating the relationships
#joint table between Building and Company models
  belongs_to :company
  belongs_to :building

#validation
  validates :building, :uniqueness => { :scope => :company_id }
end
