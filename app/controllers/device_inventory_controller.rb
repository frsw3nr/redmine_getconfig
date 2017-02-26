class DeviceInventoryController < ApplicationController
  unloadable

  def index
    binding.pry

    node_name   = params['server_name']
    metric_name = params['metric_name']
    node   = Node.find_by(node_name: node_name)
    metric = Metric.find_by(metric_name: metric_name)

    DeviceResult.find_by(metric_id: metric.id, node_id: node.id).metric
    # respond_to do |format|
    #   format.html
    #   format.json { render json: TestResultDatatable.new(view_context) }
    # end

    # デバイス付き検査結果

    # DeviceResult.all()
    # DeviceResult.find_by(metric_id: 90).metric

    # @devices=Node.find_by(node_name:'w2016').device_results
    # @devices[0].metric.metric_name
    # @devices[0].metric.domain.domain_name
  end
end
