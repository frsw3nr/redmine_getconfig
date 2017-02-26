class TestResult < ActiveRecord::Base
  unloadable
  belongs_to :metric
  belongs_to :node
end
