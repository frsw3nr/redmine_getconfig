class Tenant < ActiveRecord::Base
  unloadable
  self.table_name = 'tenant'
  has_many :nodes
end
