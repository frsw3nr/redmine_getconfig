$ ->
  $('#test_results-table').dataTable
    processing: true
    serverSide: true
    ajax: $('#test_results-table').data('source')
    pagingType: 'full_numbers'
