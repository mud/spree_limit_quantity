Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                     :name => "add_qty_limit",
                     :insert_before => "#shipping_specs",
                     :partial => 'spree/admin/products/qty_limit')
