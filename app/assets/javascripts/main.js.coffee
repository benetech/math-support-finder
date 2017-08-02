Turbolinks.enableProgressBar()
$ ->
  #mobile check
  window.mobileAndTabletcheck = ->
    check = false
    ((a) ->
      if /(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino|android|ipad|playbook|silk/i.test(a) or /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0, 4))
        check = true
      return
    ) navigator.userAgent or navigator.vendor or window.opera
    check

  $(document).on 'page:fetch', ->
    $('#main').addClass('animated fadeOut')

  $(document).on 'page:load', ->
    Analytical.track()

  $(document).on 'page:restore', ->
    Analytical.track()

  $(document).on 'page:change', ->

    #clean up ui for sort
    $('.sort_link').each () ->
      if $(@).hasClass('desc')
        $(@).html($(@).text().replace('▼', '<i  aria-hidden="true" class="fa fa-fw fa-chevron-down"></i> <span class="sr-only">Descending</span>'))
      else if $(@).hasClass('asc')
        $(@).html($(@).text().replace('▲', '<i aria-hidden="true" class="fa fa-fw fa-chevron-up"></i> <span class="sr-only">Ascending</span>'))
      $(@).attr('title', 'sorts table by this column')

    #truncate table text
    $('.truncate').readmore
      moreLink: '<a class="truncate-toggle" href="#"><i class="fa fa-fw fa-plus-circle"></i>More</a>'
      lessLink: '<a class="truncate-toggle" href="#"><i class="fa fa-fw fa-minus-circle"></i>Less</a>'
      collapsedHeight: 100

    #fade in/out content
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

    #bulk actions for admin editing index pages
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

    #strongly suggesting options for setups filtering
    window.triggerCount = 0 #limit triggering to prevent endless loop
    triggerMappings = (mappings, form_id) ->
      window.triggerCount++
      #console.log window.triggerCount
      #console.log mappings
      if triggerCount < 5
        for id, options of mappings
          if options.length > 0
            #console.log form_id
            $select = if form_id.indexOf('-form') > -1 then $(id) else $('#q_' + id)
            $('option', $select).each () ->
              #console.log @.value, options
              #we want an intersection of the options implied by the current mappings
              if @.value && options.indexOf(parseInt(@.value)) == -1
                #console.log 'disabling ', $(@).text()
                #$(@).attr('disabled', true)
                $select.hideOption(@.value) #uses a plugin
              else if options.indexOf(@.value) > -1 and $(@).is(':selected')
                triggerMappings($(@).data('mappings'), form_id)

    #select box magic for searching
    $results =$('#setups-results, #setup_search, #setup-form')
    if $results.length > 0
      $selects = $('select', $results)
      #auto detect
      #TODO dry
      $detect = $("#detector")
      $detect.click () ->
        #os, platform, mobile check
        #https://github.com/bestiejs/platform.js/
        info = platform.parse(navigator.userAgent)
        os = platform.os.toString()
        reader = platform.name
        plat_type = if window.mobileAndTabletcheck() then "mobile" else plat_type =  "desktop"
        #console.log(os, reader, plat_type)

        #set platform 
        ##pattern repeated for application...should be abstracted
        ##id varies between version of the search form
        id = 'platform_version_platform_id_eq'
        $platformSelect = if $results.attr('id').indexOf('-form') > -1 then $(id) else $platformSelect = $('#q_' + id)
        $label = $('label[for="' + $platformSelect.attr('id') + '"]')
        ##$label.append(" (Detected as " + os + ")").data('detected', true) unless $label.data('detected')
        $label.append(" (Detected)").data('detected', true) unless $label.data('detected')
        $options = $('option', $platformSelect)
        os_set = false
        #console.log $options

        $options.each () ->
          val = $(@).text()
          if val.length > 0 && ( os.indexOf(val) > -1 || ( val == "Mac"  &&  os.indexOf("OS X") > -1))
            $(@).prop('selected', true)
            $platformSelect.trigger('change')
            os_set = true
            return false

        #set application
        id = 'browser_reader_version_browser_reader_id_eq'
        $applicationSelect = if $results.attr('id').indexOf('-form') > -1 then $(id) else $applicationSelect = $('#q_' + id)
        $label = $('label[for="' + $applicationSelect.attr('id') + '"]')
        $label.append(" (Detected as " + reader + ")").data('detected', true) unless $label.data('detected')
        $options = $('option', $applicationSelect)
        reader_set = false

        $options.each () ->
          val = $(@).text()
          if val.length > 0 && ( (val.indexOf(reader) > -1 || (reader == 'IE' && val.indexOf('Internet Explorer') > -1 )) &&  val.indexOf(plat_type) > -1 )
            $(@).prop('selected', true)
            $applicationSelect.trigger('change')
            #console.log($(@))
            reader_set = true
            return false
        $("#statusbar").text "Your settings have been detected."


      #on change event
      $selects.change () ->
        window.triggerCount = 0
        if  $('#warning').length < 0
          $warning  = $('<tr id="warning" style="display:none;"><td colspan=8 class="alert-danger">* Results do not match current column selections.  Click search to recalculate.</td></tr>')
          $results.find('thead').append $warning
          $warning.slideDown('slow')
        #console.log('changed')
        #reset all --- a bit more involved because of the hide plugin
        #$results.find('option').removeProp('disabled')
        $selects.each () ->
          $select = $(@)
          if $select.data()
            $.each $select.data(),  (k, v) ->
              #console.log $select, k, k.indexOf('opt') > -1, k.indexOf('Modified') == -1, v
              $select.showOption(v.attr('value')) if(k.indexOf('opt') > -1 && k.indexOf('Modified') == -1)

        triggerMappings($('option:selected', this).data('mappings'), $results.attr('id'))

      #trigger mappings on load
      $selects.find('option:selected').each () ->
        triggerMappings($(@).data('mappings'), $results.attr('id')) if @.value

