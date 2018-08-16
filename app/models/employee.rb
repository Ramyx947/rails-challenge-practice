class Employee < ApplicationRecord

#define the belongs_to relationship
  belongs_to :company

#validates the name
  validates :name, { presence: true, uniqueness: true }
end
