Turbolinks.enableProgressBar()
$ ->
  #setSizes = ()->
    #height = $(window).height() - $('#nav').outerHeight()
    #width = $(window).width()
    ##$('section', '#dashboard').css {'height': height}

  #$(window).resize $.debounce 100, ->
      #setSizes()

  $(document).on 'page:fetch', ->
    $('#main').addClass('animated fadeOut')

  $(document).on 'page:load', ->
    Analytical.track()

  $(document).on 'page:restore', ->
    Analytical.track()

  $(document).on 'page:change', ->
    window.sort_links = () ->
      $('.sort_link').each () ->
        if $(@).hasClass('desc')
          $(@).html($(@).text().replace('▼', '<i  aria-hidden="true" class="fa fa-fw fa-chevron-down"></i> <span class="sr-only">Descending</span>'))
        else if $(@).hasClass('asc')
          $(@).html($(@).text().replace('▲', '<i aria-hidden="true" class="fa fa-fw fa-chevron-up"></i> <span class="sr-only">Ascending</span>'))
        $(@).attr('title', 'sorts table by this column')
    window.sort_links()
    $('.truncate').readmore
      moreLink: '<a href="#">More</a>'
      lessLink: '<a href="#">Less</a>'
      collapsedHeight: 196
    $('#main').removeClass('fadeOut').addClass('animated fadeIn')
    #set focus
    $('h1').first().focus()

    #allow file input for csv upload
    $('input[type=file]').bootstrapFileInput()

    #remove :visited attributes on */new for screen readers
    $('a.new-link').removeProp('visited')

    #for ajax boolean toggle
    $('.boolean-toggle').off().on 'click', (e) ->
      $(@).toggleClass 'fa-check'
          .toggleClass 'fa-times'

    #bulk actions
    $('.bulk').off().on 'click', (e) ->
      bulk          = $(@).data('bulk') #used for strong params
      url           = $(@).data('url')
      actor         = $(@).data('actor')
      actor_css     = actor.replace(/_/g, '-')
      actor_value   = $(@).data(actor_css)
      selector      = $(@).data('selector')
      selector_name = selector.replace(/_/g, '-')
      selector_css  = '.' + selector_name

      $selections = $('' + selector_css + ":checked")

      sets = []
      for selection in $selections
        set = {}
        set[actor] = actor_value
        set[selector] = $(selection).data(selector_name)
        sets.push set
      data = {}
      data[bulk] = sets

      $.ajax
        url: url
        type: "POST"
        data: data
        success: (data) ->
          Turbolinks.visit(window.location)

        error: (jqXHR, textStatus, errorThrown) ->
          alert textStatus, errorThrown


    #ajax search
    $(".autosubmit select").off().change (e) ->
      $(this).closest('form').submit()

    #strongly suggesting options for setups filtering
    window.triggerCount = 0
    triggerMappings = (mappings, form_id) ->
      window.triggerCount++
      #console.log window.triggerCount
      #console.log mappings
      if triggerCount < 5
        for id, options of mappings
          if options.length > 0
            #console.log form_id
            if form_id.indexOf('-form') > -1
              css_id = id
            else
              css_id = '#q_' + id
            #console.log css_id, options
            $('option', css_id).each () ->
              #console.log @.value, options
              if @.value && options.indexOf(parseInt(@.value)) == -1
                #console.log 'disabling ', @
                $(@).attr('disabled', true)
              else if options.indexOf(@.value) > -1 and $(@).is(':selected')
                triggerMappings($(@).data('mappings'), form_id)

    $results =$('#setups-results, #setup_search, #setup-form')
    if $results.length > 0
      $selects = $('select', $results)
      $selects.change () ->
        if $results.find('#warning').length == 0 and $results.attr('id') == 'setups-results'
          $results.find('thead').append('<tr id="warning"><td colspan=8 class="alert-danger">* Results do not match current column selections.  Click search to recalculate.</td></tr>') 
        #console.log('changed')
        window.triggerCount = 0
        #reset all
        $results.find('option').removeProp('disabled')
        $selected = $('option:selected', this)
        mappings =  $selected.data('mappings')
        #console.log mappings
        triggerMappings(mappings, $results.attr('id'))

      #trigger on selected
      $selects.find('option:selected').each () ->
        if @.value
          #console.log @.value
          $(@).parents('select').trigger('change')
