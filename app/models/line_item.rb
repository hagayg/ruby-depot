class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :quantity, :created_at, :updated_at, :product
  belongs_to :product
  belongs_to :cart
end
