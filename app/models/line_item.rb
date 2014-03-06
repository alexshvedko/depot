class LineItem < ActiveRecord::Base
  attr_accessible :product, :cart, :product_id, :cart_id
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  #validates :product_id, presence: true

  def total_price
    product.price * quantity
  end

end
