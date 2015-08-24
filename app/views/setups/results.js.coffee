$('#setups-results').replaceWith('<%= escape_javascript(render("results")) %>')
$('#simple-search').slideUp 400, () ->
  $('#setups-results-wrap').fadeIn 400, () ->
    $('#setups-results-title').focus()
