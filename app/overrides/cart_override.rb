Deface::Override.new(:virtual_path => "spree/orders/_line_item",
                     :name => "add_quantity_limit",
                     :insert_after => "code[erb-loud]:contains('variant.sku')",
                     :text => '<%= " • Limit: #{variant.product.quantity_limit_value} per order" if variant.product.quantity_limited? %>')
