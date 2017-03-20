Redmine::Plugin.register :redmine_getconfig do
  name 'Getconfig'
  author 'Minoru Furusawa'
  description 'Gradle server acceptance plugin for Redmine'
  version '0.1.8'
  url 'http://github.com/frsw3nr/redmine_getconfig'
  author_url 'http://github.com/frsw3nr/'

  menu :top_menu, :inventory,
    {controller: 'inventory', action: 'index'},
    caption: :inventory

end
