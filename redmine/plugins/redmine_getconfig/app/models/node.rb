class Node < ActiveRecord::Base
  unloadable
  belongs_to :tenant
  has_many :site_nodes
  has_many :sites, through: :site_nodes
  has_many :test_results
  has_many :metrics, through: :test_results
  has_many :device_results
  has_many :metrics, through: :device_results
end
