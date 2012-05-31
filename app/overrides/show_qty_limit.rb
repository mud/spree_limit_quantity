Deface::Override.new(:virtual_path => "spree/products/_cart_form",
                     :name => "add_qty_limit",
                     :insert_after => ".add-to-cart",
                     :text => '<% if @product.quantity_limited? %><p>Order Limit: <%= @product.quantity_limit_value %></p><% end %>',
                     :sequence => 201)
