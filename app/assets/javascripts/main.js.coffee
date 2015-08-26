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
    $('#main').removeClass('fadeOut').addClass('animated fadeIn')
    #set focus
    $('#page-title').focus()

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

    $results =$('#setups-results')
    if $results.length > 0
      $selects = $('select', $results)
      $selects.change () ->
        #console.log('changed')
        window.triggerCount = 0
        #reset all
        $results.find('option').removeProp('disabled')
        $selected = $('option:selected', this)
        mappings =  $selected.data('mappings')
        #console.log mappings
        triggerMappings(mappings)

    triggerMappings = (mappings) ->
      window.triggerCount++
      #console.log window.triggerCount
      #console.log mappings
      if triggerCount < 5
        for id, options of mappings
          if options.length > 0
            css_id = '#q_' + id
            console.log css_id, options
            $('option', css_id).each () ->
              if @.value and options.indexOf(@.value) == -1
                #console.log 'disabling ', @
                $(@).attr('disabled', true)
              else if options.indexOf(@.value) > -1 and $(@).is(':selected')
                triggerMappings($(@).data('mappings'))
          
