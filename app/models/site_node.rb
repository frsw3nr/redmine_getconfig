class SiteNode < ActiveRecord::Base
  unloadable
  self.table_name = 'site_node'
  belongs_to :site
  belongs_to :node
end
