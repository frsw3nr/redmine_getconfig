class TestResult < ActiveRecord::Base
  unloadable
  self.table_name = 'test_result'
  belongs_to :metric
  belongs_to :node
end
