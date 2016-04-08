class Product < ActiveRecord::Base
  belongs_to :product_type
  serialize :properties, HashSerializer
end