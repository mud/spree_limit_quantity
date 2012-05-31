Spree::Product.class_eval do
  has_one :quantity_limit, :class_name => 'Spree::QuantityLimit'
  accepts_nested_attributes_for :quantity_limit
  attr_accessible :quantity_limit_attributes
  
  def quantity_limited?
    !quantity_limit.nil? && quantity_limit[:limit] > 0
  end
  
  def quantity_limit_value
    quantity_limited? ? quantity_limit[:limit] : 0
  end
end
