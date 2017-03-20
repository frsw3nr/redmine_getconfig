class InventoryController < ApplicationController
  unloadable

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
                    @tenant,
                    @node).ids
    metric_ids = Metric.joins(:domain).where(
                    'domains.domain_name like ? and metric_name like ?',
                    @domain,
                    @metric).ids
    @inventories = TestResult.where(
                        node_id: node_ids, metric_id: metric_ids
                    ).includes(:node, :metric).page(params[:page])

    @devices = Metric.joins(:domain).where(
                'domains.domain_name like ? and device_flag = 1', @domain)

  end

end
