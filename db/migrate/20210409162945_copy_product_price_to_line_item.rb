class CopyProductPriceToLineItem < ActiveRecord::Migration[6.0]
  def up
    LineItem.all.each do |line_item|
      product = line_item.product
      line_item.price = product.price
      line_item.save!
    end
  end

  def down
    LineItem.all.each do |line_item|
      line_item.price = null
      line_item.save!
    end
  end
end
