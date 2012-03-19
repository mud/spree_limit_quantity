module Spree
  class LimitQuantityConfiguration < Spree::Preferences::Configuration
    preference :limit_quantity, :boolean, :default => true
    preference :limited_quantity, :integer, :default => 0
  end
end
