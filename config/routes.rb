# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'test_result', :to => 'test_result#index'
get 'node/:node_name/test_result', :to => 'test_result#index'
