#= require jquery.url

Link = 
  init: ->
    $('#links .link_url input').live 'keyup', ->
      title = $(this).parents('fieldset').find('.link_title.title_blank input')
      if title
        url = this.value
        host = $.url(url).attr('host').replace(/^w*\./,'').split('.')[0]
        if url && host && !host.match(/^(w*|ht?t?p?)$/)
          host = host.toLowerCase().replace /^./, (letter) ->
            return letter.toUpperCase()
          title.val(host)
    $('#links .link_title.title_blank  input').live 'keyup', ->
      $(this).parents('.title_blank').removeClass('title_blank')

window.Link = Link
      