class Domain < ActiveRecord::Base
  unloadable
  self.table_name = 'domain'
  has_many :metrics
end
