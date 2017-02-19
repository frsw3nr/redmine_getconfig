Redmine::Plugin.register :redmine_getconfig do
  name 'Redmine Getconfig plugin'
  author 'Minoru Furusawa'
  description 'gradle server acceptance plugin for Redmine'
  version '0.1.8'
  url 'http://github.com/frsw3nr/getconfig'
  author_url 'http://github.com/frsw3nr/'
  # permission :inventory, { :test_result => [:index] }, :public => true
  # menu :application_menu, :inventory, { :controller => 'test_result', :action => 'index' }, :caption => 'Inventory', :after => :activity, :param => :project_id
  # menu :application_menu, :redmine_getconfig, { :controller => 'test_result', :action => 'index' }, :caption => 'Inventory'
end
