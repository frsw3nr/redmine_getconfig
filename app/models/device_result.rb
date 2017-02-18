class DeviceResult < ActiveRecord::Base
  unloadable
  self.table_name = 'device_result'
  belongs_to :metric
  belongs_to :node
end
