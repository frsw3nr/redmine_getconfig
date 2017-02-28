class DeviceInventoryController < ApplicationController
  unloadable

  def index

    node_name   = params['server_name']
    metric_name = params['metric_name']

    metric = Metric.joins(:nodes).find_by(nodes: { node_name: node_name}, metric_name: metric_name)

    @tables = []
    Node.find_by(node_name: node_name).device_results.where(metric_id: metric.id).order(seq: :asc).group_by(&:seq).each do |seq, devices|
      record = {}
      record["seq"] = seq
      devices.each do |device|
        record[device.item_name] = device.value
      end
      @tables.append(record)
    end

    @headers = @tables[0].keys

  end
end
