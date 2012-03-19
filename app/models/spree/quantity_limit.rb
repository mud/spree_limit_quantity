module Spree
  class QuantityLimit < ActiveRecord::Base
    belongs_to :product
    self.table_name = "quantity_limits"
  end
end
