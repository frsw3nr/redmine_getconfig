class InventoryController < ApplicationController
  unloadable
  include Common

  def index
    # respond_to do |format|
    #   format.html
    #   format.json do
    #     render json: InventoryDatatable.new(view_context)
    #   end
    # end

    @tenant = params[:tenant] || '%'
    @node   = params[:node]   || '%'
    @domain = params[:domain] || '%'
    @metric = params[:metric] || '%'

    node_ids   = Node.joins(:tenant).where(
                    'tenants.tenant_name like ? and node_name like ?',
                    wildcard(@tenant),
                    wildcard(@node)).ids
    metric_ids = Metric.joins(:domain).where(
                    'domains.domain_name like ? and metric_name like ?',
                    wildcard(@domain),
                    wildcard(@metric)).ids
    @inventories = TestResult.where(
                        node_id: node_ids, metric_id: metric_ids
                    ).includes(:node, :metric).page(params[:page])
    # @devices = Metric.joins(:domain).where(
    #            device_flag: true, id:@inventories.pluck(:metric_id))
    @devices = Metric.joins(:domain).where(
                'domains.domain_name like ? and device_flag = 1', wildcard(@domain))
  end

end
