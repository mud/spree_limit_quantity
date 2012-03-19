Spree::LineItem.class_eval do
  validate :ensure_quantity
  
  private
  def ensure_quantity
    if !variant.nil? && variant.product.quantity_limited? && variant.product.quantity_limit_value < quantity
      self.quantity = variant.product.quantity_limit_value
    end
  end
end
