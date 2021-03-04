class Property < ApplicationRecord
  belongs_to :lgasfile
  has_many :lgasfiles, class_name: "lgasfile", foreign_key: "cl_id"
end
