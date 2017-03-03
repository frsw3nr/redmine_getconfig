# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'inventory/:server_name' => 'inventory#index' , as: 'inventory'
get 'device_inventory/:server_name/:metric_name' => 'device_inventory#index' , as: 'device_inventory'

