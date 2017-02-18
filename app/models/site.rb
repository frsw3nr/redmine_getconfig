class Site < ActiveRecord::Base
  unloadable
  self.table_name = 'site'
  has_many :site_nodes
  has_many :nodes, through: :site_nodes
end
