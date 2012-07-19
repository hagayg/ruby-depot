class AddProductPriceToLineItems < ActiveRecord::Migration

  def up
    add_column :line_items, :product_price, :float

    LineItem.all.each do |li|
      li.product_price = li.product.price
    end

  end
end
