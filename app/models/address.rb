class Address < ApplicationRecord
  belongs_to :property
  belongs_to :lgasfile
end
