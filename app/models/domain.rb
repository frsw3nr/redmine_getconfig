class Domain < ActiveRecord::Base
  unloadable
  has_many :metrics
end
