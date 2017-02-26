class TestResultController < ApplicationController
  unloadable


  def index
    binding.pry
    # respond_to do |format|
    #   format.html
    #   format.json { render json: TestResultDatatable.new(view_context) }
    # end

    node_name = params['node_name']
    @test_results=Node.find_by(node_name: node_name).test_results
  end
end
