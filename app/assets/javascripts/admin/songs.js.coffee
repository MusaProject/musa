$ ->
  start = 0
  end = 0
  subtitles = new Array()

  $('#next-line').on 'click', (e)->
    e.preventDefault()
    current = $('.current')
    lineNumber = current.data('line')
    lineHeight = parseInt($('.lyric p').css('line-height'))
    $('.lyric').scrollTop((lineNumber + 1) * lineHeight)
    next = current.next()
    next.addClass 'current'
    current.removeClass 'current'

    end = window.pop.currentTime()
    line = "{#{start}, #{end}, #{current.text()}}"
    # debugger
    subtitles.push line
    start = end

    $('#song_subtitles').val subtitles




