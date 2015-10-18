class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart

  validates :product_id, presence: true, numericality: {greater_than_or_equal_to: 1}
  validates :quantity, presence: true, numericality: {greater_than_or_equal_to: 1}
  def total_price
    product.price * quantity
  end
end