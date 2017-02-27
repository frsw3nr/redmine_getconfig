class DeviceInventoryController < ApplicationController
  unloadable

  def index
    binding.pry

    node_name   = params['server_name']
    metric_name = params['metric_name']

    metric = Metric.find_by(metric_name: metric_name)
    @devices = Node.find_by(node_name: node_name).device_results.where(metric_id: metric.id).order(seq: :desc)
  end
end
