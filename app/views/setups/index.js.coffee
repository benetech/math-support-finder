$('#setups-results').replaceWith('<%= escape_javascript(render("results")) %>')
$('#setups-results-title').focus()
$('#simple-search').slideUp()
$('#setups-results-wrap').fadeIn()
