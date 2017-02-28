class InventoryController < ApplicationController
  unloadable

  def index

    # respond_to do |format|
    #   format.html
    #   format.json { render json: TestResultDatatable.new(view_context) }
    # end

    node_name = params['server_name']
    @node = Node.find_by(node_name: node_name)
    @devices = Metric.joins(:nodes).where(nodes: {node_name: node_name}, device_flag: 1).distinct
    @inventories = Node.find_by(node_name: node_name).test_results
  end

end
