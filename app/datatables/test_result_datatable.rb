class TestResultDatatable < AjaxDatatablesRails::Base
  include AjaxDatatablesRails::Extensions::Kaminari

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= [
      'test_results.node.tenant.tenant_name' ,
      'test_results.metric.domain.domain_name' ,
      'test_results.metric.metric_name' ,
      'test_results.value' ,
      'test_results.verify'
    ]
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= [
      'test_results.node.tenant.tenant_name' ,
      'test_results.metric.domain.domain_name' ,
      'test_results.metric.metric_name' ,
      'test_results.value'
    ]
  end

  private

  def data
    records.map do |record|
      [
        record.node.tenant.tenant_name ,
        record.metric.domain.domain_name ,
        record.metric.metric_name ,
        record.value ,
        record.verify
      ]
    end
  end

  def get_raw_records
    binding.pry
    Node.find_by(node_name: 'Jenkins').test_results
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
